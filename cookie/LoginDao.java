package cookie;

import java.sql.*;

public class LoginDao {
    public int loginCheck(String id, String pwd) {
        String sql = "SELECT pwd FROM login WHERE id =? and pwd = ?";
        int flag = 0;
        
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            String url = "jdbc:mariadb://localhost:3306/backend";
            String user = "chobird";
            String passwd = "1111";
            Connection con = DriverManager.getConnection(url, user, passwd);
            PreparedStatement pstmt = con.prepareStatement(sql);
            
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            
            try(ResultSet rs = pstmt.executeQuery()) {
                if(rs.next()) {
                    flag = 1;
                } else {
                    flag = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            pstmt.close();
            con.close();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
} 