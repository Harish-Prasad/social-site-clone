package com.hpk.instagram.dao;

import java.sql.ResultSet;

public interface InstagramDAOInterface {

	   int createProfile(String firstName, String secondName, String email, String password, String phone);
	   boolean loginProfile(String email, String password);
	   ResultSet viewProfile(String e);
	   ResultSet viewFriendList(String e);
       int deleteProfile(String id);
       int editProfile(String firstName, String lastName, String email, String password, String phoneNumber);
	   
}
