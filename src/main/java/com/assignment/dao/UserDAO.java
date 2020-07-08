package com.assignment.dao;

import com.assignment.model.User;
import com.assignment.util.ConnectionHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

public class UserDAO {
    private static final Logger LOGGER = Logger.getLogger(UserDAO.class.getName());

    public User findByUsernameAndStatus(String username, User.Status status){
        try {
            Connection connection = ConnectionHelper.getConnection();
            String sql = "select * from users where status = ? and username = ? ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, status.getValue());
            preparedStatement.setString(2, username);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()){
                String rsUsername = rs.getString("username");
                String rsFullname = rs.getString("fullName");
                String rsPassword = rs.getString("password");
                String rsEmail = rs.getString("email");
                String rsSalt = rs.getString("salt");
                String rsAddress = rs.getString("address");
                String rsPhone = rs.getString("phone");
                int rsRole = rs.getInt("role");
                int rsStatus = rs.getInt("status");
                User user = new User();
                user.setUsername(rsUsername);
                user.setFullName(rsFullname);
                user.setPassword(rsPassword);
                user.setAddress(rsAddress);
                user.setEmail(rsEmail);
                user.setPhone(rsPhone);
                user.setSalt(rsSalt);
                User.Role r = User.Role.findByValue(rsRole);
                user.setRole(r);
                User.Status stt = User.Status.findByValue(rsStatus);
                user.setStatus(stt);
                return user;
            }
        } catch (SQLException ex) {
            LOGGER.severe(ex.getMessage());
        }
        return null;
    }

    public boolean save(User user){
        try {
            Connection connection = ConnectionHelper.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "insert into users " +
                            "(username, password, salt, email, fullName, address, phone, role, status) " +
                            "values (?,?,?,?,?,?,?,?,?)"
            );
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getSalt());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getFullName());
            preparedStatement.setString(6, user.getAddress());
            preparedStatement.setString(7, user.getPhone());
            preparedStatement.setInt(8, user.getRole());
            preparedStatement.setInt(9, user.getStatus());
            preparedStatement.execute();
            return true;
        } catch (SQLException ex) {
            LOGGER.severe(ex.getMessage());
        }
        return false;
    }
}
