package com.srikanth.service;

import java.util.List;

import com.srikanth.domain.Kids;
import com.srikanth.domain.Men;
import com.srikanth.domain.User;
import com.srikanth.domain.Women;
import com.srikanth.domain.teame;

public interface ShopService {

	public List<Men> getAllMenCollections();

	public List<Women> getAllWomenCollections();

	public List<Kids> getAllKidsCollections();

	public List<Men> getAllMenDataByType(String str);

	public List<Women> getAllWomenDataByType(String str);

	public List<Kids> getAllKidsDataByType(String str);

	public List<teame> searchAllDataByQuery(String query);

	public List<teame> searchAllDataByName(String query);

	public teame getAllDataById(Long Id);
	public List<teame> getAllRecommendedDataByType(String str);

	public void saveUserDetails(User user);

	
	public List<teame> getAllSaleItems();
	
	
	public boolean validateDetails(String useremail, String userpassword);
	public void getalldetails();

}
