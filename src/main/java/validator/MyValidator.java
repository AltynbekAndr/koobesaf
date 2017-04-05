package validator;


public class MyValidator {
 String name;
 String lname;
 String email;
 String pass1;
 String pass2;

    public MyValidator(String name, String lname, String email, String pass1, String pass2){
        this.name = name;
        this.lname = lname;
        this.email = email;
        this.pass1 = pass1;
        this.pass2 = pass2; }

    public String validname(){
        if(name!=null&&name.length()>2){
            return name;
        }return null;
    }
    public String validlname(){
        if(lname!=null&&lname.length()>2){
            return lname;
        }return null;
    }
    public String validemail(){
        if(email!=null&&email.length()>6){
            return email;
        }return null;
    }
    public String validpassword(){
        if(pass1!=null&&pass2!=null&&pass1.length()>2&&pass2.length()>2&&pass1.equals(pass2)){
            return pass1;
        }return null;
    }







}
