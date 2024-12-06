## Lý thuyết

### Có một số loại dữ liệu khác nhau có sẵn trong PostgreSQL. Bao gồm những kiểu sau:

- `Text`: Text được sử dụng cho các giá trị chuỗi như tên hay là mô tả sản phẩm.
- `Numeric`: Numeric được sử dụng cho các giá trị dữ liệu đại diện cho số lượng và số đo.
- `Temporal`: Temporal được sử dụng cho các giá trị dữ liệu đại diện cho ngày và thời gian.
- `Boolean`: Boolean được sử dụng cho các giá trị dữ liệu đại diện cho một giá trị có hai trạng thái: true hoặc false.

### Các kiểu dữ liệu văn bản có sẵn trong PostgreSQL bao gồm `TEXT`, `VARCHAR` và `CHAR`.

#### 1. TEXT
- Kiểu `TEXT` có thể dùng cho một chuỗi các ký tự không bị giới hạn về chiều dài.
- Kiểu dữ liệu `TEXT` là một lựa chọn tốt cho dữ liệu văn bản có độ dài không xác định.
#### 2. VARCHAR
- Kiểu dữ liệu `VARCHAR` lưu trữ chuỗi các ký tự không bị giới hạn chiều dài. Ngoài ra kiểu `VARCHAR` còn cho phép người dùng đặt ra giới hạn đối với các giá trị dữ liệu được gọi bằng cách mô tả một số nguyên `N`, được đặt trong ngoặc đơn liền sau `VARCHAR`. Ví dụ `VARCHAR(50)`, `VARCHAR(100)`,... 
- Kiểu `VARCHAR` cho phép các chuỗi có ít hơn `N` ký tự được lưu trữ trong cột. Việc cố gắng chèn một chuỗi có độ dài lớn hơn `N` sẽ dẫn đến lỗi.
- Việc khai báo là cột có kiểu dữ liệu là `VARCHAR` mà không chỉ định `N` thì tương đương với khai báo một cột có kiểu dữ liệu là `TEXT`.
#### 3. CHAR
- Kiểu dữ liệu `CHAR` cũng được sử dụng để thể hiện một chuỗi các ký tự nhưng nó khác với `VARCHAR(N)` ở chỗ các giá trị được lưu trữ trong cột `CHAR(N)` không thay đổi về chiều dài. Nếu một chuỗi được lưu trữ nhỏ hơn độ dài cố định là `N`, khoảng trắng sẽ được thêm vào cuối (bên phải) để đảm bảo chuỗi có độ dài `N`.
- Một cột `CHAR` không được khai báo `N` mặc định nghĩa là cột đấy chỉ có thể lưu trữ một ký tự. Nghĩa là: `CHAR` tương đương với `CHAR(1)`.

#### Ví dụ
- Một mã gồm có hai ký tự, được sử dụng để phân biệt vị trí lưu trữ cho các sản phẩm trong kho. -> `CHAR`
- Tên của các chương trình cộng đồng được lưu trữ trong thư viện thành phố, có độ dài tối đa 100 ký tự . -> `VARCHAR(100)`
- Một trường dữ liệu thể hiện nội dung của email cho một nhà cung cấp dịch vụ email. -> `TEXT`
- Mã số nhân viên bao gồm chín chữ số. -> `CHAR`

### PostgreSQL cung cấp 2 kiểu dữ liệu số: số nguyên, số thực dấu phẩy động

#### Số nguyên
Có 3 kiểu số nguyên trong PostgreSQL:

- `SMALLINT` là số nguyên có dấu, được lưu trữ bằng 2 byte, có phạm vi từ `-32,768` đến `32,767`.
- `INTEGER` là số nguyên có dấu, được lưu trữ bằng 4 byte, có phạm vi từ `-2,147,483,648` đến `2,147,483,647`.
- `SERIAL` là kiểu số nguyên, PostgreSQL sẽ tự động tạo và điền các giá trị tăng dần vào cột `SERIAL`. Tương tự với cột `AUTO_INCREMENT` trong cột MySQL hoặc `AUTO INCREMENT` trong SQLite.
#### Số thực dấu phẩy động
Có 3 kiểu số thực dấu phẩy động chính, đó là:

- `FLOAT(n)` là một số thực dấu phẩy động có độ chính xác, ít nhất là `n`, được lưu trữ tối đa là bằng 8 byte.
- `REAL` hoặc `FLOAT8` là số thực dấu phẩy động, được lưu trữ bởi 4 byte.
- `NUMERIC` hay `NUMERIC(p,s)` là một số thực có p chữ số với số s sau dấu thập phân. Trong PostgreSQL `NUMERIC` và `DECIMAL` là tương đương nhau và có thể thay thế cho nhau.

- **NUMERIC** là một kiểu dữ liệu số trong PostgreSQL dùng để lưu trữ các giá trị số có độ chính xác cao, bao gồm cả phần thập phân. Nó tương tự như kiểu dữ liệu DECIMAL trong các hệ quản trị cơ sở dữ liệu khác.

- **Cú pháp:**
`NUMERIC(p,s)`
- **Giải thích:**

  + `p`: Tổng số chữ số của giá trị số, bao gồm cả phần thập phân.
  + `s`: Số chữ số sau dấu thập phân.
- **Ví dụ:**
(dùng SQL)

  + Lưu trữ giá trị số nguyên
`NUMERIC(5,0)`

  + Lưu trữ giá trị số thập phân với 2 chữ số sau dấu thập phân
`NUMERIC(10,2)`

  + Lưu trữ giá trị số thập phân với 4 chữ số sau dấu thập phân
`NUMERIC(15,4)`

#### Ví dụ
Các kiểu dữ liệu phù hợp nhất cho các cột của bảng client được mô tả bên dưới theo thứ tự:

- `id`: id của công ty và cột này có giá trị tự động tăng lên đến hàng triệu. -> `SERIAL`
- `name`: tên của công ty -> `VARCHAR(50)`
- `site_url`: đường dẫn url của công ty có độ dài thay đổi. -> `VARCHAR(50)`
- `num_employees`: số lượng nhân viên (tối đa 1500 cho doanh nghiệp nhỏ). -> `SMALLINT`
- `num_customers`: số lượng khách hàng (ít nhất là 10 nghìn). -> `INTEGER`

### Boolean
Một kiểu dữ liệu `BOOLEAN` có thể có một trong 3 trạng thái: `true`, `false` hoặc `null`. Bạn sử dụng từ khoá `BOOLEAN` hoặc `BOOL` để khai báo một cột với kiểu dữ liệu `BOOLEAN`.

### Mặc định của cột Boolean
Một cột `BOOLEAN` có mặc định là `false` rất ít. Trong đa số tình huống, giá trị mặc định sẽ là `true`. Hãy tưởng tượng một hệ thống quản lý người dùng được xây dựng cho một trang web. Hành vi mặc định là người dùng mới có thể đăng ký truy cập vào trang web. Truy cập này vẫn có sẵn cho đến khi người dùng thể hiện hành vi cộng đồng kém và bị khóa quyền truy cập. Như vậy, cột mô tả quyền có được truy cập hay không trong trường hợp này sẽ được đặt mặc định là `true`.

#### Ví dụ
- Cột `poisonous` (có chứa độc) là một cột của một bảng mô tả về các thực vật có độc ở trong cơ sở dữ liệu. -> true
- Cột `is_closed` (đã đóng) của bảng course mô tả về trạng thái khóa học đó trong cơ sở dữ liệu của một trường đại học.

### Kiểu dữ liệu tạm thời
Kiểu dữ liệu tạm thời cho phép bạn lưu trữ ngày tháng và/hoặc thời gian. PostgreSQL có 5 kiểu dữ liệu tạm thời chính:

- `DATE` chỉ lưu trữ giá trị của ngày, tháng năm.
- `TIME` lưu trữ các giá trị thời gian trong ngày.
- `TIMESTAMP` lưu trữ cả ngày tháng, năm và thời gian trong ngày.
- `TIMESTAMPTZ` là kiểu dữ liệu dấu thời gian, nhận biết múi giờ. Là viết tắt của dấu thời gian với múi giờ.
- `INTERVAL` lưu trữ khoảng thời gian.
- `TIMESTAMPTZ` là phần mở rộng PostgreSQL trên các kiểu dữ liệu tạm thời theo tiêu chuẩn SQL.

#### Ví dụ
Kiểu dữ liệu phù hợp nhất cho các cột của bảng `appeal` được mô tả bên dưới theo thứ tự:

- Cột `id`: id của các đơn yêu cầu, có giá trị tự động tăng lên đến hàng triệu. -> `SERIAL`
- Cột `content`: nội dung của đơn yêu cầu. -> `TEXT`
- Cột `received_on`: ghi lại ngày và thời gian khi nhận được đơn yêu cầu. ->`TIMESTAMP`
- Cột `approved_on_appeal`: cho biết về trạng thái của quyết định cho vay đã được chấp nhận hay không dựa theo đơn yêu cầu. -> `BOOLEAN`
- Cột `reviewed`: lưu trữ ngày khi đơn yêu cầu được xem xét. -> `DATE`

### Bài tập
Người quản lý của bạn đã yêu cầu bạn tạo một bảng có tên là `loan`. Hãy xác định kiểu dữ liệu và thuộc tính chính xác để sử dụng cho các cột của bảng. Cấu trúc của bảng loan được mô tả dưới đây như sau:

- Cột `borrower_id`: id của người cho vay -> `INTEGER`
- Cột `bank_id`: id của ngân hàng -> `INTEGER`
- Cột `approval_date`: ngày mà khoản vay ban đầu được phê duyệt. `DATE`
- Cột `gross_approval`: cho phép số tiền cho vay lên tới 5.000.000 đô. -> `NUMERIC(9,2)`
- Cột `term_in_months`: thời gian (tính theo tháng) để trả nợ -> `SMALLINT`
- Cột `revolver_status`:  mô trả việc tiền lãi có xoay vòng hay không, được biểu thị bằng các giá trị true và false -> `BOOLEAN`
- Cột `initial_interest_rate`: lãi suất ban đầu -> `NUMERIC(4,2)`
