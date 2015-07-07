package com.srikanth.domain;

public class Kids {

	
	private Long id;
	private String name;
	private String imageurl;
	private String type;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "men [id=" + id + ", name=" + name + ", imageurl=" + imageurl
				+ ", type=" + type + "]";
	}
	
}
