package test;


import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


/**
 * Handles and retrieves person request
 */
@Controller
@RequestMapping("/main")
public class MainController {



    @Resource(name="UserService")
    private UserService userService;

    private static  int limitResultsPerPage = 10;
    /**
     *
     * @return the name of the JSP page
     */

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getPersons(@RequestParam(value = "page", required = false) Integer page,
                             @RequestParam(value = "resultsPerPage", required = false) Integer resultsPerPage,
                             Model model) {

        if (resultsPerPage != null)
            limitResultsPerPage = resultsPerPage;

        if (page == null)
            page = 1;

        int maxPage = (this.userService.tableSize()%limitResultsPerPage) == 0 ? (this.userService.tableSize()/limitResultsPerPage) : (this.userService.tableSize()/limitResultsPerPage) + 1;
        int startpage = page - 5 > 0?page - 5:1;
        int endpage =  maxPage;
        int nextPage = page == maxPage ? page - 1 : page;

        model.addAttribute("users", this.userService.getUsersList(page, limitResultsPerPage));
        model.addAttribute("startpage", startpage);
        model.addAttribute("endpage", endpage);
        model.addAttribute("user", new User());
        model.addAttribute("page", nextPage);
        model.addAttribute("currentPage", page);

        return "userpage";
    }

    /**
     *
     * @return the name of the JSP page
     */
    @RequestMapping(value = "/users/add", method = RequestMethod.GET)
    public String getAdd(Model model) {

        model.addAttribute("userAttribute", new User());

        return "addpage";
    }

    /**
     *
     * @return  the name of the JSP page
     */
    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("userAttribute") User user) {

        user.setCreateDate(new Timestamp(new Date().getTime()));
        userService.add(user);

        return "addedpage";
    }

    /**
     *
     * @return  the name of the JSP page
     */
    @RequestMapping(value = "/users/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(value="id", required=true) Integer id,
                         Model model) {

        userService.delete(id);
        model.addAttribute("id", id);

        return "deletedpage";
    }

    /**
     *
     * @return the name of the JSP page
     */
    @RequestMapping(value = "/users/edit", method = RequestMethod.GET)
    public String getEdit(@RequestParam(value="id", required=true) Integer id,
                          Model model) {

        model.addAttribute("userAttribute", userService.get(id));
        return "editpage";
    }

    /**
     *
     * @return  the name of the JSP page
     */
    @RequestMapping(value = "/users/edit", method = RequestMethod.POST)
    public String saveEdit(@ModelAttribute("userAttribute") User user,
                           @RequestParam(value="id", required=true) Integer id,
                           Model model) {
        user.setId(id);
        userService.edit(user);
        model.addAttribute("id", id);
        return "editedpage";
    }

    @RequestMapping(value = "/users/search", method = RequestMethod.POST)
    public String Search(@RequestParam(value="name", required=true) String name,
                         Model model) {

        model.addAttribute("user", userService.searchUser(name));
        return "searchpage";
    }

}
