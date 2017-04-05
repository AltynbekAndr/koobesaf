package com.springapp.mvc.service;

import com.springapp.mvc.models.user;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.List;

@Transactional
@Repository("models")
public class MyService {
    @Autowired
    private SessionFactory sessionFactory;

    public void addusers(user us){
        us.setIdmessage(0);
        us.setIdmessage2(0);
        sessionFactory.getCurrentSession().save(us);
        us =(user)sessionFactory.getCurrentSession().get(user.class,us.getId());

        Integer id = us.getId();
        String rootPath = "C:\\message\\";  //try also "C:\path\"
        File dir = new File(rootPath + File.separator + "usermessage"+id);
        if (!dir.exists()) {
            dir.mkdirs();
        }



    }


    public String getUserEail(String email,String password){
        String s =null;
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(user.class);
        criteria.add(Restrictions.eq("email",email));
        criteria.add(Restrictions.eq("password",password));
        List <user> l = criteria.list();

        if(l.size()!=0){
            user u = l.get(0);
            s = u.getEmail();
            return s;
        }
        return "error";
    }
    public user getUser(String email){
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(user.class);
        criteria.add(Restrictions.eq("email",email));
        List <user> l = criteria.list();

        if(l.size()!=0){
            user u = l.get(0);

            return u;
        }
            return null;

    }
    public void setUserSms(String email){

        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(user.class);
        criteria.add(Restrictions.eq("email",email));
        List <user> l = criteria.list();

            user u = l.get(0);
            Integer idmessage =u.getIdmessage2();
            u.setIdmessage2(idmessage + 1);
            sessionFactory.getCurrentSession().save(u);


    }


    public void updateusers(){
        user u = (user)sessionFactory.getCurrentSession().get(user.class,1);
        u.setName("altuhaaa");
        sessionFactory.getCurrentSession().save(u);
    }


}
