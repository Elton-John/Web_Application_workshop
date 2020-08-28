package pl.coderslab.dao;

import org.apache.commons.lang3.ArrayUtils;
import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.utils.DbUtil;
import pl.coderslab.entity.User;

import java.sql.*;
import java.util.Arrays;

public class UserDao {

    private final String CREATE_USER_QUERY = "INSERT INTO users (email, username, password) VALUES (?,?,?);";
    private static final String READ_USER_QUERY = "SELECT email, username, password FROM users WHERE id =?";
    private static final String UPDATE_USER_QUERY = "UPDATE users SET email=?, username=?, password=? WHERE id=?;";
    private static final String FIND_ALL_USERS_QUERY = "SELECT id FROM users";
    private static final String DELETE_USER_QUERY = "DELETE FROM users WHERE id=?";

    public User create(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preStmt = conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            preStmt.setString(1, user.getEmail());
            preStmt.setString(2, user.getUsername());
            preStmt.setString(3, hashed(user.getPassword()));
            preStmt.executeUpdate();
            ResultSet resultSet = preStmt.getGeneratedKeys();
            if (resultSet.next()) {
                user.setId(resultSet.getInt(1));
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public User read(int userId) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preStmt = conn.prepareStatement(READ_USER_QUERY);
            preStmt.setString(1, String.valueOf(userId));
            ResultSet resultSet = preStmt.executeQuery();
            resultSet.next();
            String email = resultSet.getString("email");

            String username = resultSet.getString("username");

            String password = resultSet.getString("password");
            return new User(userId, email, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public void update(User user) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement prepStmt = conn.prepareStatement(UPDATE_USER_QUERY);
            prepStmt.setString(1, user.getEmail());
            prepStmt.setString(2, user.getUsername());
            prepStmt.setString(3, hashed(user.getPassword()));
            prepStmt.setInt(4, user.getId());
            prepStmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public User[] findAll() {
        int[] tabOfId = new int[0];
        User[] users = new User[0];
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement prepStmt = conn.prepareStatement(FIND_ALL_USERS_QUERY);
            ResultSet resultSet = prepStmt.executeQuery();
            while (resultSet.next()) {
                tabOfId = Arrays.copyOf(tabOfId, tabOfId.length + 1);
                tabOfId[tabOfId.length - 1] = resultSet.getInt("id");
            }
            for (int id :
                    tabOfId) {
                users = ArrayUtils.add(users, read(id));
            }
            System.out.println(Arrays.toString(users));
            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public void delete(int idUser) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(DELETE_USER_QUERY);
            preparedStatement.setInt(1, idUser);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String hashed(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}
