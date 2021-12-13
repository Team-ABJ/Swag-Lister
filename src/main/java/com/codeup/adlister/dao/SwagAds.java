package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.List;

public interface SwagAds {
    // get a list of all the ads
    List<Ad> all();

    Long insert(Ad ad);     // insert a new ad and return the new ad's id\

    List<Ad> searchAdsByUser(long id) throws SQLException;

    List<Ad> searchAdsFromResult(String searchInput) throws SQLException;

    void destroy(int id);    // remove a record

    Ad findSwagAd(Long id);


    void update(Ad ad);

    long update(int parseInt);
}
