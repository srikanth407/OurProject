package com.srikanth.dao;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.srikanth.domain.Kids;
import com.srikanth.domain.Men;
import com.srikanth.domain.User;
import com.srikanth.domain.Women;
import com.srikanth.domain.teame;

@Repository
public class ShopDaoImpl implements ShopDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Men> getMenCollections() {

		String query = "select * from menteame order by Random()";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<Men>(
				Men.class));
	}

	@Override
	public List<Women> getWomenCollections() {

		String query = "select * from womenteame order by Random() ";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<Women>(
				Women.class));
	}

	@Override
	public List<Kids> getKidsCollections() {

		String query = "select * from kidsteame order by Random()";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<Kids>(
				Kids.class));
	}

	@Override
	public List<Men> getMenDataByType(String str) {

		String query = "select * from menteame  where type=? order by Random()" ;
		return jdbcTemplate.query(query, new Object[] { str },
				new BeanPropertyRowMapper<Men>(Men.class));
	}

	@Override
	public List<Women> getWomenDataByType(String str) {

		String query = "select * from womenteame  where type=? order by Random()";
		System.out.println(str);
		return jdbcTemplate.query(query, new Object[] { str },
				new BeanPropertyRowMapper<Women>(Women.class));
	}

	@Override
	public List<Kids> getKidsDataByType(String str) {

		String query = "select * from kidsteame where type=? order by Random()";
		return jdbcTemplate.query(query, new Object[] { str },
				new BeanPropertyRowMapper<Kids>(Kids.class));
	}

	@Override
	public List<teame> searchDataByQuery(String query) {
		// TODO Auto-generated method stub

		String q = "select * from teame where upper(type) Like upper('%"
				+ query + "%')";
		return jdbcTemplate.query(q, new BeanPropertyRowMapper<teame>(
				teame.class));

	}

	@Override
	public teame getDataById(Long Id) {
		//System.out.println(Id);
		return jdbcTemplate.queryForObject("select * from teame where id=?",
				new Object[] { Id }, new BeanPropertyRowMapper<teame>(teame.class));
	}

	@Override
	public List<teame> getRecommendedDataByType(String str) {
		String query = "select * from teame where category='" + str
				+ "' order by Random() limit 25";

		return jdbcTemplate.query(query, new BeanPropertyRowMapper<teame>(
				teame.class));
	}

	@Override
	public List<teame> searchDataByName(String query) {
		String q = "select * from teame where upper(name) Like upper('%"
				+ query + "%')";
		return jdbcTemplate.query(q, new BeanPropertyRowMapper<teame>(
				teame.class));
	}
   @Override
   public void persistUser(User user) {
			// TODO Auto-generated method stub
			user.setUserid(System.nanoTime());
			String insertSQL = "INSERT INTO teameusers(userid, useremail, userpassword)"+
					"VALUES (?, ?, ?);";
			
			jdbcTemplate.update(insertSQL, new Object[]{user.getUserid(),user.getUseremail(),user.getUserpassword()});
			
		}
   
   @Override
	public List<teame> getSaleItems() {
		// TODO Auto-generated method stub
		
		String q="select id,name,imageurl,category,price from teame where price between 10 and 25 order by Random()";
		
		return jdbcTemplate.query(q, new BeanPropertyRowMapper<teame>(teame.class));
	
	}
	
	

@Override
	public boolean validateDetails(String str, String str1) {
		// TODO Auto-generated method stub
		int count=1;
		List<User> list=getalldetails();
		Iterator<User> itr=list.iterator();
		
		while(itr.hasNext()){
			
			
			User l=itr.next();
			System.out.println(str);
			System.out.println(str1);
			
			if(l.getUseremail().equals(str)&l.getUserpassword().equals(str1)){
				
				count++;
			}
		}
		if(count==2){
			return true;
		}
	return false;
		
		
	}

	@Override
	public List<User> getalldetails() {
		String query= "select * from teameusers";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<User>(User.class));
		// TODO Auto-generated method stub
		
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	
