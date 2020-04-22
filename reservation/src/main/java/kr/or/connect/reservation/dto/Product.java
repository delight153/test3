package kr.or.connect.reservation.dto;

import java.util.Date;



public class Product {
	
	
	
	private int id;
	private int category_id;
	private String description;
	private String content;
	private Date modify_date;
	private String save_file_name;

	public String getSave_file_name() {
		return save_file_name;
	}


	public void setSave_file_name(String save_file_name) {
		this.save_file_name = save_file_name;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getCategory_id() {
		return category_id;
	}


	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getModify_date() {
		return modify_date;
	}


	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}




	@Override
	public String toString() {
		return "product [id=" + id + ", content_id=" + category_id + ", content=" + content + ", regdate=" + modify_date + "]";
	}
}