import java.sql.DriverManager;
import java.sql.Statement;

public class Connection{
    public static void main(String... args){
        Scanner scan = new Scanner(System.in);
        String username = "root";
        String userpassword = "root";

        try{
            Class.forName(driver);
            Connections connect = DriverManager.getConnection(url, username, userpassword);
            System.out.println("Connected With Database");
            Statement stat = connect.Statement();
            String sql = "update product set name = '"+name+"', price = "+price+" where id "+id;

            String sql = "select * from Student where id ="+id;

            ResultSet rs = stat.executeQuery(sql);
            
            


        }
    }
}