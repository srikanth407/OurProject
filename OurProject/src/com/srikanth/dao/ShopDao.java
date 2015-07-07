package com.srikanth.dao;

import java.util.*;

import com.srikanth.domain.Kids;
import com.srikanth.domain.Men;
import com.srikanth.domain.User;
import com.srikanth.domain.Women;
import com.srikanth.domain.teame;

public interface ShopDao {

	public List<Men> getMenCollections();

	public List<Women> getWomenCollections();

	public List<Kids> getKidsCollections();

	public List<Men> getMenDataByType(String str);

	public List<Women> getWomenDataByType(String str);

	public List<Kids> getKidsDataByType(String str);

	public List<teame> searchDataByQuery(String query);

	public List<teame> searchDataByName(String query);

	public teame getDataById(Long Id);

	public List<teame> getRecommendedDataByType(String str);
	
	public void persistUser(User user);
	
	public List<teame> getSaleItems();
	

public List<User> getalldetails();
public boolean validateDetails(String str, String str1);


}
