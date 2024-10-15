### Bài tập
Bạn hãy tạo ra lớp `Student` trong file `Student.java` với thông tin giống như sau:

![image](https://github.com/user-attachments/assets/68a652df-8f91-4f38-abce-04f677d44f51)

Giải thích: hình trên là mô tả của lớp `Student` với các thuộc tính và phương thức giống như sau:

- `name` là thuộc tính kiểu `String` với phạm vi truy cập `private`.
- `age` là thuộc tính kiểu `int` với phạm vi truy cập `private`.
- `Student()` là phương thức khởi tạo không tham số có phạm vi truy cập là `public`.
- `getInformation()` và `display()` là hai phương thức có phạm vi truy cập `public`.
Trong thực tế, bạn không nên viết code của hai class trong cùng 1 file giống như các bài tập ở phần trước (`class Student` và `class Entry` được viết trong cùng 1 file). Với mỗi một class bạn nên tạo ra 1 file riêng cho nó. Ví dụ: file `Student.java` sẽ chứa code của lớp `Student`, file `Entry.java` sẽ chứa code của lớp `Entry`, ...

Quay lại phần bài tập, cửa sổ code trong bài này chính là file `Student.java`, trong file này bạn cần tạo ra lớp `Student` với đầy đủ các thuộc tính và phương thức giống như đã mô tả (bạn chỉ cần khai báo các thuộc tính và phương thức, không cần viết code bên trong phương thức).

### Lý thuyết
Hình minh họa về lớp `Student` bên trên chính là một **sơ đồ lớp**. Ở các bài trước bạn đã được làm quen với sơ đồ này nhưng ở bài này bạn sẽ được hiểu sâu hơn về nó.

#### Sơ đồ lớp

Như bạn đã biết, lập trình hướng đối tượng là phương pháp giải quyết các bài toán lập trình thông qua các đối tượng và mối quan hệ giữa chúng, một chương trình thực tế sẽ có rất nhiều các lớp và đối tượng. Sơ đồ lớp chính là sơ đồ mà nhìn vào đó bạn thấy được mô tả của các lớp, mối quan hệ giữa các đối tượng trong hệ thống (mối quan hệ giữa các đối tượng bạn sẽ được học trong các bài tiếp theo).

Một ký hiệu lớp sẽ có 3 phần là Class name (tên lớp), attributes (danh sách các thuộc tính) và operations (các thủ tục, để đơn giản thì bạn hãy coi thủ tục chính là phương thức). Một lớp trong biểu đồ lớp sẽ được mô tả giống như sau:

![image](https://github.com/user-attachments/assets/dab0bc34-d059-4662-8a56-41c4d0825464)

Trong sơ đồ lớp, bạn có thể mô tả phạm vi truy cập của các thuộc tính, phương thức bằng cách đặt các ký tự `-, ~, #, +` trước các thuộc tính và phương thức.

- Ký tự `'-'` sẽ tương ứng với phạm vi truy cập `private`.
- Ký tự `'~'` sẽ tương ứng với phạm vi truy cập `default`.
- Ký tự `'#'` sẽ tương ứng với phạm vi truy cập `protected`.
- Ký tự `'+'` sẽ tương ứng với phạm vi truy cập `public`.

Ví dụ lớp `Student` giống như sau:
```
class Student {
	private int id;
	String name;
	protected int age;
	public double gpa;

	public Student() {

	}

	void getInformation() {

	}

	public void display() {

	}
}
```
Sẽ được biểu mô tả bằng sơ đồ lớp giống như sau (bạn hãy để ý các ký tự -, ~, #, +):

![image](https://github.com/user-attachments/assets/56a2301d-c002-4c96-b3a2-aa0ee93f6f73)

Lưu ý: khi một phương thức không được định nghĩa kiểu trả về và tên phương thức trùng với tên lớp thì đây chính là phương thức khởi tạo. Như trong sơ đồ lớp trên thì `+Student()` chính là phương thức khởi tạo `public`.

Để chắc chắn rằng bạn đã hiểu về sơ đồ lớp, hãy xem ví dụ tiếp theo về lớp `Product` (lớp dùng để mô tả các đối tượng sản phẩm):
```
class Product {
	public int id;
	String name;
	protected double price;
	private String description;

	Product() {

	}

	public void getInformation() {

	}

	public void display() {

	}
}
```
Lớp này sẽ được mô tả bằng sơ đồ lớp giống như sau:

![image](https://github.com/user-attachments/assets/4c95ee51-1b68-4492-ac3c-ec711d666727)
