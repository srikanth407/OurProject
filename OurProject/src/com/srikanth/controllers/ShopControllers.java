package com.srikanth.controllers;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

 

 



import com.srikanth.domain.Kids;
import com.srikanth.domain.Men;
import com.srikanth.domain.User;
import com.srikanth.domain.teame;
import com.srikanth.domain.Women;
import com.srikanth.domain.data;
import com.srikanth.service.ShopService;

@Controller
public class ShopControllers {

	@Autowired
   private ShopService shopService;	
	
   @RequestMapping(value="/men",method=RequestMethod.GET)
   public ModelAndView getAllMenData(){
	   
	   ModelAndView mav= new ModelAndView("men");
	   mav.addObject("mendata", shopService.getAllMenCollections());
	//System.out.println(mav);
	   return mav;
   }
   
   @RequestMapping(value="/women",method=RequestMethod.GET)
   public ModelAndView getAllWomenData(){
	   
	   ModelAndView mav= new ModelAndView("women");
	   mav.addObject("womendata", shopService.getAllWomenCollections());
	//System.out.println(mav);
	   return mav;
   }
   
   @RequestMapping(value="/kids",method=RequestMethod.GET)
   public ModelAndView getAllKidsData(){
	   
	   ModelAndView mav= new ModelAndView("kids");
	   mav.addObject("kidsdata", shopService.getAllKidsCollections());
	//System.out.println(mav);
	   return mav;
   }
   
   @RequestMapping(value="/men/{type}",method=RequestMethod.GET)
   public ModelAndView getMensDataByType(@PathVariable("type")String type){
	   
	   ModelAndView mav=new ModelAndView("men");
	  // mav.addObject("type1", type);
	   List<Men> m=shopService.getAllMenDataByType(type);
	   mav.addObject("mendata",m);
	  // System.out.println(mav);
	   return mav; 
   }
   @RequestMapping(value="/women/{type}",method=RequestMethod.GET)
   public ModelAndView getWomensDataByType(@PathVariable("type")String type){
	   
	   ModelAndView mav=new ModelAndView("women");
	   List<Women> w=shopService.getAllWomenDataByType(type);
	   mav.addObject("womendata",w);
	   //System.out.println(mav);
	   return mav; 
   }
   @RequestMapping(value="/kids/{type}",method=RequestMethod.GET)
   public ModelAndView getKidsDataByType(@PathVariable("type")String type){
	   
	   ModelAndView mav=new ModelAndView("kids");
	   List<Kids> k=shopService.getAllKidsDataByType(type);
	   mav.addObject("kidsdata",k);
	   //System.out.println(mav);
	   return mav; 
   }
   
   @RequestMapping(value="/",method=RequestMethod.GET)
   public ModelAndView homePage(){
	   
	   ModelAndView mav=new ModelAndView("home");
	  
	   return mav; 
   }
   
   @RequestMapping(value="/additem", method = RequestMethod.GET)
	public ModelAndView getitemspage() {

		ModelAndView mav = new ModelAndView("additem");
		mav.addObject("item",new data());

		List<String> item = new ArrayList<String>();
		item.add("men");
		item.add("women");
		item.add("kids");
	return mav;
	}

   @RequestMapping(value="/search",method=RequestMethod.GET)
 	public ModelAndView getSearchResults()
 	{
 		
 		ModelAndView mav = new ModelAndView("search");
 		return mav;
 		
 	}
    
    @RequestMapping(value="/search",method=RequestMethod.POST)
   	public ModelAndView getSearchResultsDisplayed(@RequestParam("query") String query)
   	{
   		ModelAndView mav = new ModelAndView("search");
   		mav.addObject("alldata", shopService.searchAllDataByQuery(query) );
   		return mav;
   		
   	}
    
    @RequestMapping(value="/details/{id}",method=RequestMethod.GET)
	public ModelAndView getMensPage(@PathVariable("id") Long id)
	{
		
		ModelAndView mav = new ModelAndView("details");
		teame n= shopService.getAllDataById(id);
		
		mav.addObject("mensdata", n);
		//System.out.println(n);
		mav.addObject("recommendedmensdata", shopService.getAllRecommendedDataByType(n.getCategory()));
		
		return mav;
	}
	
   
    /*@RequestMapping(value="/search",method=RequestMethod.POST)
   	public ModelAndView getNameSearchResultsDisplayed(@RequestParam("query") String query)
   	{
   		ModelAndView mav = new ModelAndView("search");
   		mav.addObject("alldata", shopService.searchAllDataByName(query) );
   		return mav;
   		
   	}*/

    @RequestMapping(value="/adduser",method=RequestMethod.GET)
	public ModelAndView getAddNewsPage(){
		ModelAndView mav = new ModelAndView("adduser");
		mav.addObject("user",new User());
		//System.out.println(mav);
		return mav;
	}
	
   
   @RequestMapping(value="/adduser",method=RequestMethod.POST)
	public ModelAndView getAddNewsPageWithData(@ModelAttribute("user")User user){
		ModelAndView mav = new ModelAndView("home");
		shopService.saveUserDetails(user);
		
		return mav;
	}
   
   @RequestMapping(value="/cart/{id}", method=RequestMethod.GET)
   public ModelAndView getCartData(@PathVariable("id") Long id){
   
	   ModelAndView mav=new ModelAndView("cart");
	   teame n= shopService.getAllDataById(id);
	   mav.addObject("cartdata", n);
	   //System.out.println(mav);
	   return mav;
	  
   }
   @RequestMapping(value="/cart",method=RequestMethod.GET)
   public ModelAndView cartPage(){
	   
	   ModelAndView mav=new ModelAndView("cart");
	  
	   return mav; 
   }
   @RequestMapping(value="/sale", method=RequestMethod.GET)
   public ModelAndView getSaleItems()
   { 
	   ModelAndView mav= new ModelAndView("sale");
	   mav.addObject("sale", shopService.getAllSaleItems());
	   
	  //System.out.println(mav);
	   return mav;
	   
   }
   @RequestMapping(value="/login",method=RequestMethod.GET)
		public ModelAndView showLogin() {
  User user = new User();
  
  ModelAndView mav = new ModelAndView("login");
  mav.addObject("login",user);
	mav.setViewName("login");
	
	return mav;
}
@RequestMapping(value="/login",method=RequestMethod.POST)
public ModelAndView getAddNewsPageWithData12(@ModelAttribute("loginAttribute")User user){
  
  User l=new User();
  System.out.println(user.getUseremail());
	System.out.println(user.getUserpassword());
	ModelAndView mav = new ModelAndView("home");
	//shopService.saveUserDetails(user);
	if(shopService.validateDetails(user.getUseremail(),user.getUserpassword()))
	{
	mav.setViewName("home");	
	}
	else
	{
		mav.setViewName("adduser");	
	}
	System.out.println( shopService.validateDetails(user.getUseremail(),user.getUserpassword()));
	//ModelAndView mav=new ModelAndView("home");
	
	//mav.addObject(l);
	return mav;
	
}
   
   
   
   
   
   
   
   
   
}
