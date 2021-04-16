import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {

    Connection connection = null;

    public MySQLAdsDao(Config config){
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Ad> all(){
        List<Ad> ads = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while(rs.next()){

                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ads;
    }

    @Override
    public long insert(Ad adToBeSaved){
        long newId = 0;

        try {
            Statement statement = connection.createStatement();
            String sql = "INSERT INTO ads (user_id, title, description) " +
                    "VALUES("+adToBeSaved.getUserId()+", '"+adToBeSaved.getTitle()+"', '"+adToBeSaved.getDescription()+"')";
            statement.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            if(rs.next()) {
                newId = rs.getLong(1);
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }

        return newId;
    }
}
