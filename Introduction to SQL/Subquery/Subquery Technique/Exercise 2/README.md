## Bài tập
Bạn đang nghiên cứu về thành tích học tập và bạn đang học một nhóm sinh viên cụ thể tại một trường đại học địa phương. Tìm điểm trung bình của năm sinh viên thành công nhất trong nhóm này.

Thông tin về điểm số của sinh vien được lưu trữ trong một bảng gọi là `students`, có các thuộc tính sau:

- `student_id(SMALLINT)`: định danh duy nhất của sinh viên;
- `student_name(VARCHAR[50])`: tên của sinh viên;
- `grade(DECIMAL[10,2])`: điểm mà sinh viên đạt được.

Kết quả phải là một bảng có một cột `average_grade` và một hàng chứa điểm trung bình của năm học sinh có điểm cao nhất. Câu trả lời phải được định dạng thành 2 chữ số sau dấu thập phân. Bạn được đảm bảo rằng năm sinh viên có kết quả tốt nhất có thể được xác định duy nhất.

## Ví dụ
Với dữ liệu của bảng `students`

student_id	| student_name	| grade
------------|---------------|------
1	| Oliver Smith	| 3.2
2	| Jacob Bell	| 2.9
3	| William Thompson	| 3.1
4	| Sophie Clark	| 3.5
5	| Daniel Palmer	| 3.6
6	| Emily Morris	| 4.0
7	| Zachary Mills	| 2.5

kết quả đầu ra sẽ là

| average_grade |
|---------------|
| 3.48 |

5 điểm số cao nhất của nhóm sinh viên này là 4.0, 3.6, 3.5, 3.2 và 3.1, vì vậy tổng của chúng bằng 17,4 và 17,4 / 5 = 3,48

## Gợi ý
Để định dạng câu trả lời cho 2 chữ số sau dấu thập phân, bạn nên sử dụng hàm `ROUND()` mà chúng ta đã học trước đây.
