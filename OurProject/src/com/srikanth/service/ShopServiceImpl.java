package com.srikanth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srikanth.dao.ShopDao;
import com.srikanth.domain.Kids;
import com.srikanth.domain.Men;
import com.srikanth.domain.User;
import com.srikanth.domain.Women;
import com.srikanth.domain.teame;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDao shopDao;

	@Override
	public List<Men> getAllMenCollections() {
		// TODO Auto-generated method stub
		return shopDao.getMenCollections();
	}

	@Override
	public List<Women> getAllWomenCollections() {
		// TODO Auto-generated method stub
		return shopDao.getWomenCollections();
	}

	@Override
	public List<Kids> getAllKidsCollections() {
		// TODO Auto-generated method stub
		return shopDao.getKidsCollections();
	}

	@Override
	public List<Men> getAllMenDataByType(String str) {
		// TODO Auto-generated method stub
		return shopDao.getMenDataByType(str);
	}

	@Override
	public List<Women> getAllWomenDataByType(String str) {
		// TODO Auto-generated method stub
		return shopDao.getWomenDataByType(str);
	}

	@Override
	public List<Kids> getAllKidsDataByType(String str) {
		// TODO Auto-generated method stub
		return shopDao.getKidsDataByType(str);
	}

	@Override
	public List<teame> searchAllDataByQuery(String query) {
		// TODO Auto-generated method stub
		return shopDao.searchDataByQuery(query);
	
}

	@Override
	public teame getAllDataById(Long Id) {
		return shopDao.getDataById(Id);
	}

	@Override
	public List<teame> getAllRecommendedDataByType(String str) {
		return shopDao.getRecommendedDataByType(str);
	}

	@Override
	public List<teame> searchAllDataByName(String query) {
		return shopDao.searchDataByName(query);
	}
	public void saveUserDetails(User user) {
		// TODO Auto-generated method stub
		shopDao.persistUser(user);
	}

	@Override
	public List<teame> getAllSaleItems() {
		// TODO Auto-generated method stub
		return shopDao.getSaleItems();
	}
	
	@Override
	public boolean validateDetails(String useremail, String userpassword) {
		// TODO Auto-generated method stub
		return shopDao.validateDetails(useremail, userpassword);
	}

	@Override
	public void getalldetails() {
		// TODO Auto-generated method stub
		shopDao.getalldetails();
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}