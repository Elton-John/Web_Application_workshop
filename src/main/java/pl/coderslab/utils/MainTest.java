package pl.coderslab.utils;

import java.sql.Connection;
import java.sql.SQLException;

public class MainTest {
    public static void main(String[] args) {
        try {
            Connection conn = DbUtil.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
