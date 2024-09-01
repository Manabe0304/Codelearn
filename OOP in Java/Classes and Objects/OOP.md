### Bạn hãy cho biết kết quả khi chạy chương trình sau:
```
import java.util.Scanner;

public class Entry {
	public static void main(String[] args) {
		Student s = new Student();
		s.name = "Codelearn";
		s.display();
	}
}

class Student {
	String name;
	
	private void display() {
		System.out.println("Name: " + name);
	}
}
```
### Lý thuyết
Nhìn vào đoạn code khai báo phương thức `display()` bạn sẽ thấy có từ khóa `private`. Với các bài trước bạn đã quen với việc khai báo một phương thức bằng từ khóa `public`, vậy sự khác nhau giữa `public` và private là gì? Bài này bạn sẽ giúp bạn hiểu rõ.

#### Phạm vi truy cập

Phạm vi truy cập là khái niệm để xác định xem một biến hay một phương thức có được truy xuất từ bên ngoài hay không. Trong Java có 4 loại phạm vi truy cập là `private`, `default`, `protected`, `public`. Xem bảng minh họa dưới đây để có cái nhìn tổng quan về phạm vi truy cập:

|Phạm vi truy cập|	Truy cập bên trong class?|	Truy cập bên trong package?|	Truy cập bên ngoài package bởi class con?|	Truy cập bên ngoài class và không thuộc class con?|
|--------------|-------|------|-------|-------|
| private |	Y |	N |	N |	N | 
| default |	Y	| Y	| N	| N |
| protected |	Y	| Y |	Y	| N |
| public |	Y	| Y |	Y |	Y |
#### Phạm vi truy cập private

Đây là phạm vi truy cập hạn chế nhất, tất cả các thuộc tính và phương thức sẽ chỉ được truy xuất từ bên trong lớp đó. Ví dụ nếu bạn truy xuất một thuộc tính hoặc phương thức được khai báo với từ khóa `private` từ một lớp khác thì chương trình sẽ báo lỗi giống như sau:

![781062-1](https://github.com/user-attachments/assets/249e4fe4-949d-4a0a-a36c-2b81f0748ae7)


Để chương trình trên có thể chạy được bạn cần thay đổi phạm vi truy cập của thuộc tính `name` trong lớp `Student` từ `private` sang `default`, `protected` hoặc `public`.

#### Phạm vi truy cập mặc định (default)

Khi khai báo một thuộc tính hoặc một phương thức mà không khai báo phạm vi truy cập thì chương trình sẽ hiểu là bạn đang khai báo với phạm vi truy cập mặc định. Các biến và phương thức có phạm vi truy cập mặc đinh chỉ có thể được truy xuất trong cùng một package. Ví dụ trong cùng package OOP bạn có thể truy xuất tới thuộc tính của lớp `Student` từ lớp `Entry` giống chương trình sau (kéo dài kích thước của cửa sổ bài tập để xem rõ hơn):
![781062-2](https://github.com/user-attachments/assets/f7a05c0b-7cf7-40af-8f28-35186a91fb1a)

Nhưng nếu 2 lớp này khác package thì chương trình sẽ báo lỗi:
![781062-3](https://github.com/user-attachments/assets/6296e3be-e5dc-40a2-ae87-05329ef76421)

Trong trường hợp trên, để chương trình chạy được bạn cần thay đổi phạm vi truy cập từ `default` sang `public`.

Lưu ý: khi muốn sử dụng một lớp từ package khác thì bạn cần `import` lớp này vào bằng câu lệnh `import <tên_package>.<tên_lớp>`; giống như ví dụ trên.

#### Phạm vi truy cập protected

Đây là phạm vi truy cập tương tự với phạm vi truy cập `default` nhưng ít hạn chế hơn ở chỗ các thuộc tính và phương thức có phạm vi truy cập này có thể được truy xuất từ một lớp con của package khác (bạn sẽ hiểu rõ hơn ở các bài về tính kế thừa).

#### Phạm vi truy cập public

Đây là phạm vi truy cập rộng nhất, các thuộc tính và phương thức có phạm vi truy cập này có thể được truy xuất từ bất cứ đâu (kể cả từ package khác).

Đọc tới đây bạn đã hiểu về các phạm vi truy cập trong Java và đã có thể làm được bài này.
