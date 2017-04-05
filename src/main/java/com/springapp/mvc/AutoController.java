package com.springapp.mvc;
import com.springapp.mvc.models.SmsPerson;
import com.springapp.mvc.models.user;
import com.springapp.mvc.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import validator.MyValidator;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;


@Controller
@RequestMapping
public class AutoController {
    @Autowired
    MyService myService;

    @RequestMapping(value = "autorization", method = RequestMethod.POST)
    public String autorization(HttpServletRequest request) {
        String name = request.getParameter("name");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String pass1 = request.getParameter("password1");
        String pass2 = request.getParameter("password2");
        MyValidator valid = new MyValidator(name, lname, email, pass1, pass2);

        if (name.equals(valid.validname())) {
            if (lname.equals(valid.validlname())) {
                if (email.equals(valid.validemail())) {
                    if (pass1.equals(valid.validpassword())) {
                        user user = new user();
                        user.setName(name);
                        user.setLname(lname);
                        user.setEmail(email);
                        user.setPassword(pass1);

                        myService.addusers(user);


                        return "main";
                    }
                }
            }
        }
        return "error";

    }
    @RequestMapping(value = "signin", method = RequestMethod.POST)
    public String signin(HttpServletRequest request) {
         String email = request.getParameter("email");
         String password = request.getParameter("password");
         String s = myService.getUserEail(email, password);
        if(s.equals(email)){
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            return "head";
        }
        return s;


    }
    @RequestMapping(value = "main", method = RequestMethod.GET)
    public String main(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String email ="tuha@bk.ru";
        session.setAttribute("email",email);
            return "main";



    }




    @ResponseBody
    @RequestMapping(value = "sms", method = RequestMethod.POST)
    public Object sms() {

        return "aloha";
    }


    @ResponseBody
    @RequestMapping(value = "smms", method = RequestMethod.POST)
       public Object smms() {
        SmsPerson s = new SmsPerson();
        s.setSms("smms smms smms");

        return s;
    }

    @RequestMapping(value = "smms2", method = RequestMethod.POST,
            headers = {"Content-type=application/json"})
    @ResponseBody
    public Object smms2(@RequestBody SmsPerson smsPerson) throws IOException {


                String mail = smsPerson.getEmail();
                user u = myService.getUser(mail);
                Integer id = u.getId();
                Integer idmessage2 = u.getIdmessage2();
                myService.setUserSms(u.getEmail());
                String rootPath = "C:\\message\\";  //try also "C:\path\"
                File f = new File(rootPath + File.separator + "usermessage"+id);
                File f2 = new File(f.getAbsolutePath()+File.separator + "usermessage"+idmessage2++ +".txt");
                f2.createNewFile();
                FileWriter fw2 = new FileWriter(f2, false);

                fw2.write(smsPerson.getSms());

                fw2.flush();



        return smsPerson;
    }

}