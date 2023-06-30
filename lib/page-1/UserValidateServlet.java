class UserValidate{
    protected void doPost(HttpServletRequest request , HttpServletResponse respose) throws ServletException{
        String userName = request.getParameter("um");
        String passWord = request.getParameter("pw");
        if(Validate(userName, passWord)){
            System.out.println("Valid User..");
        }else{
            System.out.println("Invalid User");
        }
    }

    public boolean validate(String username, String password){
        if(username.equals("root") && password.equals("password")){
            return true;
        }else{
            return false;
        }
    }


    public boolean toDo()
}


public class UserValidateServlet{
    public static void main(String... args){

    }
}