## Bài tập
Bạn hãy cho biết kết quả khi chạy chương trình sau:
```
package OOP;

public class Entry {
	public static void main(String[] args) {
		SuperClass a = new SubClass();
		System.out.println(a.x);
		System.out.println(((SubClass)a).x);
	}
}

class SuperClass{
	int x = 10;
}

class SubClass extends SuperClass{
	int x = 20;
}
```
## Lý thuyết
Qua bài này bạn sẽ hiểu được khái niệm **Variable Hiding**.

### Variable Hiding

**Variable Hiding** xảy ra khi lớp con khai báo thuộc tính có tên giống tên thuộc tính ở lớp cha, lúc này thuộc tính của lớp cha sẽ không bị lớp con ghi đè mà bị lớp con ẩn đi:
```
class SuperClass{
	int x;
}

class SubClass extends SuperClass{
	int x;
}
```
Trong ví dụ trên thuộc tính `x` ở lớp con và thuộc tính `x` ở lớp cha là 2 thuộc tính tồn tại độc lập. Do không bị ghi đè nên khi sử dụng up-casting thì thuộc tính được gọi vẫn là thuộc tính ở lớp cha:
```
class SuperClass{
	int x = 10;
}

class SubClass extends SuperClass{
	int x = 20;
}

public class Entry {
	public static void main(String[] args) {
		SuperClass a = new SubClass();
		System.out.println(a.x);
	}
}
```
Kết quả khi chạy chương trình:
```
10
```
Muốn gọi tới được thuộc tính của lớp con bạn phải sử dụng down-casting giống như sau:
```
class SuperClass{
	int x = 10;
}

class SubClass extends SuperClass{
	int x = 20;
}

public class Entry {
	public static void main(String[] args) {
		SuperClass a = new SubClass();
		System.out.println(a.x);
		System.out.println(((SubClass)a).x);
	}
}
```
Kết quả khi chạy chương trình:
```
10
20
```
