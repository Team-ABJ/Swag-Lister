package com.codeup.adlister.dao;

import com.codeup.adlister.Config;

public class DaoFactory {
    private static SwagAds adsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static SwagAds getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLSwagAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
