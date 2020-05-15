package com;

public class UploadDTO {
	int num;
	String filename;
	String time_in;
	String time_out;
	String time_dif;
	String file_type;
	int width_pic;
	int height_pic;
	public UploadDTO(int num, String filename, String time_in, String time_out, String time_dif, String file_type,
			int width_pic, int height_pic) {
		this.num = num;
		this.filename = filename;
		this.time_in = time_in;
		this.time_out = time_out;
		this.time_dif = time_dif;
		this.file_type = file_type;
		this.width_pic = width_pic;
		this.height_pic = height_pic;
	}
	
	public UploadDTO() {
	}

	public UploadDTO(String filename) {
		this.filename = filename;
	}
	
	public UploadDTO(String filename, String time_dif, String file_type, int width_pic, int height_pic) {
		this.filename = filename;
		this.time_dif = time_dif;
		this.file_type = file_type;
		this.width_pic = width_pic;
		this.height_pic = height_pic;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getTime_in() {
		return time_in;
	}
	public void setTime_in(String time_in) {
		this.time_in = time_in;
	}
	public String getTime_out() {
		return time_out;
	}
	public void setTime_out(String time_out) {
		this.time_out = time_out;
	}
	public String getTime_dif() {
		return time_dif;
	}
	public void setTime_dif(String time_dif) {
		this.time_dif = time_dif;
	}
	public String getFile_type() {
		return file_type;
	}
	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}
	public int getWidth_pic() {
		return width_pic;
	}
	public void setWidth_pic(int width_pic) {
		this.width_pic = width_pic;
	}
	public int getHeight_pic() {
		return height_pic;
	}
	public void setHeight_pic(int height_pic) {
		this.height_pic = height_pic;
	}
	
	
	
	


}


