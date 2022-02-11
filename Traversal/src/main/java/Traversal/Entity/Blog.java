package Traversal.Entity;

import java.io.Serializable;
import java.util.Date;

public class Blog implements Serializable {
	/**
	* 
	*/
	private static final long serialVersionUID = 1L;

private int Id;
private String Name;
private String Title; 
private String Description;
private String Detail;
private String Images;
private String Create_by;
private Date Create_at;
private String Comment;
private int Status;
public Blog() {
	super();
}

public Blog(int id, String name, String title, String description, String detail, String images, String create_by,
		Date create_at, String comment, int status) {
	super();
	Id = id;
	Name = name;
	Title = title;
	Description = description;
	Detail = detail;
	Images = images;
	Create_by = create_by;
	Create_at = create_at;
	Comment = comment;
	Status = status;
}

public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public String getDescription() {
	return Description;
}
public void setDescription(String description) {
	Description = description;
}
public String getDetail() {
	return Detail;
}
public void setDetail(String detail) {
	Detail = detail;
}
public String getImages() {
	return Images;
}
public void setImages(String images) {
	Images = images;
}
public String getCreate_by() {
	return Create_by;
}
public void setCreate_by(String create_by) {
	Create_by = create_by;
}
public Date getCreate_at() {
	return Create_at;
}
public void setCreate_at(Date create_at) {
	Create_at = create_at;
}
public String getComment() {
	return Comment;
}
public void setComment(String comment) {
	Comment = comment;
}
public int getStatus() {
	return Status;
}
public void setStatus(int status) {
	Status = status;
}

}
