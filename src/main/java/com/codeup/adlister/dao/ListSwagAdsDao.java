package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ListSwagAdsDao implements SwagAds {
    private List<Ad> ads;
    private Connection connection = null;

    public List<Ad> all() {
        if (ads == null) {
//            ads = generateAds();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
//            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getString("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdFromResult(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();

        while(rs.next()){
            ads.add(extractAd(rs));
        }
        return ads;
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

    @Override
    public List<Ad> searchAdsByUser(long id) throws SQLException {
        PreparedStatement stmt = null;
        try{
        stmt = connection.prepareStatement("SELECT * FROM swag WHERE user_id = ?");
        stmt.setLong(1, id);
        ResultSet rs = stmt.executeQuery();
        return createAdFromResult(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Cannot find ad by id", e);
        }
    }

    @Override
    public void update(Ad ad) {

    }

    @Override
    public void destroy(Ad ad) {

    }

//    private List<Ad> generateAds() {
//        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//            1,
//            1,
//            "playstation for sale",
//            "This is a slightly used playstation",
//                price));
//        ads.add(new Ad(
//            2,
//            1,
//            "Super Nintendo",
//            "Get your game on with this old-school classic!",
//                price));
//        ads.add(new Ad(
//            3,
//            2,
//            "Junior Java Developer Position",
//            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript",
//                price));
//        ads.add(new Ad(
//            4,
//            2,
//            "JavaScript Developer needed",
//            "Must have strong Java skills",
//                price));
//        return ads;
//    }
}
