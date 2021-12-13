package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLSwagAdsDao implements SwagAds {
    private Connection connection = null;

    public MySQLSwagAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getURL(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM swag");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            //Add constructor for price
            String insertQuery = "INSERT INTO swag(user_id, title, description, category, price) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getCategory());
            stmt.setString(5, ad.getPrice());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    public List<Ad> searchAdsFromResult(String searchInput){
        try{
            String query = "SELECT * FROM swag WHERE title LIKE ? or description LIKE ?";
            String searchQuery = "%" + searchInput + "%";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, searchQuery);
            stmt.setString(2, searchQuery);

            ResultSet rs = stmt.executeQuery();
            return createAdFromResult(rs);

        } catch (SQLException throwables) {
            throw new RuntimeException("No ads were available to display");
        }
    }

    private List<Ad> createAdFromResult(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();

        while(rs.next()){
            ads.add(extractAd(rs));
        }
        return ads;
    }

    @Override
    public void update(Ad ad) {

    }

    public void destroy(int id) {
        try {
            //Add constructor for price
            String destroyQuery = "DELETE FROM swag WHERE id=?";
            PreparedStatement stmt = connection.prepareStatement(destroyQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting an Ad", e);
        }
    }

    @Override
    public Ad findSwagAd(Long id) {
        System.out.println(id);
        PreparedStatement stmt = null;
        try{
            stmt = connection.prepareStatement("SELECT * FROM swag WHERE id= ?");
            stmt.setLong(1,id);
             ResultSet rs = stmt.executeQuery();
             rs.next();
             return extractAd(rs);
        }      catch (SQLException e){
//
            e.printStackTrace();
        }
        return null;
    }

    public List<Ad> searchAdsByUser(long id) throws SQLException {
        PreparedStatement stmt = null;
        try{
            stmt = connection.prepareStatement("SELECT * FROM swag WHERE user_id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            System.out.println(rs);
            return createAdFromResult(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Cannot find ad by id", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("category"),
            rs.getString("price"));
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public static void main(String[] args) throws SQLException {
        Config config = new Config();
        MySQLSwagAdsDao testDao = new MySQLSwagAdsDao(config);
        for(Ad ad : testDao.searchAdsByUser(3)){
            System.out.println("ad.getTitle() = " + ad.getTitle());
            System.out.println("ad.getDescription() = " + ad.getDescription());
        }
        System.out.println(testDao.searchAdsByUser(3));

    }
}
