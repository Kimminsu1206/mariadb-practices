package bookmall.vo;

public class BookOrderVo {

	private int count;
	private int price;
	private int order_no;
	private int book_num;
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	
	@Override
	public String toString() {
		return "BookOrderVo [count=" + count + ", price=" + price + ", order_no=" + order_no + ", book_num=" + book_num
				+ "]";
	}
}
