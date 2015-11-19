package test;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.List;



@Service("UserService")
@Transactional

public class UserService {

    @Resource(name="sessionFactory")
    private SessionFactory sessionFactory;

    public List<User> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");
        return  query.list();
    }

    public User get( Integer id ) {
        Session session = sessionFactory.getCurrentSession();
        return (User) session.get(User.class, id);
    }

    public void add(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
    }

    public void delete(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        session.delete(user);
    }

    public void edit(User user) {
        Session session = sessionFactory.getCurrentSession();

        User existingUser = (User) session.get(User.class, user.getId());

        existingUser.setName(user.getName());
        existingUser.setAge(user.getAge());
        existingUser.setIsAdmin(user.getisAdmin());

        session.save(existingUser);
    }

    public List<User> searchUser(String name) {
        String query = "select * from user where name like '%"+name+"%'";
        return sessionFactory.getCurrentSession().createSQLQuery(query).addEntity(User.class).list();
    }

    public int tableSize(){
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery(
                "from User");

        return q.list().size();
    }




    public List<User> getUsersList(int page, int limit) {
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery(
                "from User");

        q.setFirstResult((page - 1) * limit);
        q.setMaxResults(limit);

        return (List<User>) q.list();
    }

}
