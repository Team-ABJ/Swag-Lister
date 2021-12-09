package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface SwagAds {
    // get a list of all the ads
    List<Ad> all();
    Long insert(Ad ad);     // insert a new ad and return the new ad's id
    void update(Ad ad);     // update an existing record
    void destroy(Ad ad);    // remove a record
}
