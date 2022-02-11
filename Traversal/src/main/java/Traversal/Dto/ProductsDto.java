package Traversal.Dto;

import java.sql.Date;
import java.sql.Timestamp;

public class ProductsDto {

	protected int id;
    protected String title;
    protected String description;
    protected double price;
    protected double price_net; 
    protected int available;
    protected int sold;
    protected Date deal_timer;
    protected int discount;
    protected String image;
    protected boolean cover;
    protected boolean hot_deal;
    protected boolean hot_new;
    protected boolean hot_best;
    protected boolean trend;
    protected boolean latest_review;
    protected double price_adult;
    protected double price_children;
    protected double price_child;
    protected double price_infant;
    protected String schedule1;
    protected String schedule2;
	protected String schedule3;
	protected int id_category; 
    protected String detail;
    protected String infor;
    protected String content;
    protected boolean hot_hot;
    
    protected Integer Page;
    protected Integer Limit; 
	public Integer getPage() {
		return Page;
	}

	public void setPage(Integer page) {
		Page = page;
	}

	public Integer getLimit() {
		return Limit;
	}

	public void setLimit(Integer limit) {
		Limit = limit;
	}

	public ProductsDto() {
		super();
	}
	
    public double getPrice_adult() {
		return price_adult;
	}

	public void setPrice_adult(double price_adult) {
		this.price_adult = price_adult;
	}

	public double getPrice_children() {
		return price_children;
	}
	public void setPrice_children(double price_children) {
		this.price_children = price_children;
	}
	public double getPrice_child() {
		return price_child;
	}
	public void setPrice_child(double price_child) {
		this.price_child = price_child;
	}
	public double getPrice_infant() {
		return price_infant;
	}
	public void setPrice_infant(double price_infant) {
		this.price_infant = price_infant;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getPrice_net() {
		return price_net;
	}
	public void setPrice_net(double price_net) {
		this.price_net = price_net;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}
	public int getSold() {
		return sold;
	}
	public void setSold(int sold) {
		this.sold = sold;
	}
	
	public Date getDeal_timer() {
		return deal_timer;
	}
	public void setDeal_timer(Date deal_timer) {
		this.deal_timer = deal_timer;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public boolean isCover() {
		return cover;
	}
	public void setCover(boolean cover) {
		this.cover = cover;
	}
	public boolean isHot_deal() {
		return hot_deal;
	}
	public void setHot_deal(boolean hot_deal) {
		this.hot_deal = hot_deal;
	}
	public boolean isHot_new() {
		return hot_new;
	}
	public void setHot_new(boolean hot_new) {
		this.hot_new = hot_new;
	}
	public boolean isHot_best() {
		return hot_best;
	}
	public void setHot_best(boolean hot_best) {
		this.hot_best = hot_best;
	}
	public boolean isTrend() {
		return trend;
	}
	public void setTrend(boolean trend) {
		this.trend = trend;
	}
	public boolean isLatest_review() {
		return latest_review;
	}
	public void setLatest_review(boolean latest_review) {
		this.latest_review = latest_review;
	}
	public int getId_category() {
		return id_category;
	}
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getInfor() {
		return infor;
	}
	public void setInfor(String infor) {
		this.infor = infor;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isHot_hot() {
		return hot_hot;
	}
	public void setHot_hot(boolean hot_hot) {
		this.hot_hot = hot_hot;
	}
	public String getSchedule1() {
		return schedule1;
	}
	public void setSchedule1(String schedule1) {
		this.schedule1 = schedule1;
	}
	public String getSchedule2() {
		return schedule2;
	}
	public void setSchedule2(String schedule2) {
		this.schedule2 = schedule2;
	}
	public String getSchedule3() {
		return schedule3;
	}
	public void setSchedule3(String schedule3) {
		this.schedule3 = schedule3;
	}

	

}
