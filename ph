1.Write a php program to print elements of the Indexed, Associative Arrays.
<?php
// Indexed Array
$colors = ["Red", "Green", "Blue"];
print("<b>Indexed array elements</b> <br>");
foreach($colors as $value){
echo $value."<br> ";
}
// Associative Array
$person = ["name" => "Raju", "age" => 24];
print("<b>Associate array elements</b> <br>");
foreach($person as $key =>$value){
echo $key."=>". $value;
echo "<br>";
}
?>
Indexed array elements
Red
Green
Blue
Associate array elements
name=>Raju
age=>24
2. Write a PHP Program to display the today’s date.
<?php
// Set timezone if needed (optional)
date_default_timezone_set("Asia/Kolkata");
// Display today's date
echo "Today's Date: " . date("d-m-Y");
8
PHP-MySQL - III B.Sc(CS-Major/Minor)
?>
Output
Today's Date: 23-07-2025
3. Write a PHP program to display Fibonacci series.
<?php
// Number of terms to display
$n = 10;
// First two terms
$f1 = 0;
$f2 = 1;
echo "Fibonacci Series up to $n terms:<br>";
for ($i = 1; $i <= $n; $i++) {
 echo $f1 . " ";
 // Calculate next term
 $next = $f1 + $f2;
 $f1 = $f2;
 $f2 = $next;
}
?>
Output
Fibonacci Series up to 10 terms: 0 1 1 2 3 5 8 13 21 34
4. Write a PHP Program to read the employee details.
Step 1: employee_form.html
<!-- Save this as employee_form.html -->
9
PHP-MySQL - III B.Sc(CS-Major/Minor)
<form method="post" action="employee_details.php">
 <h3>Enter Employee Details</h3>
 Name: <input type="text" name="emp_name"><br><br>
 ID: <input type="text" name="emp_id"><br><br>
 Department: <input type="text" name="emp_dept"><br><br>
 Salary: <input type="number" name="emp_salary"><br><br>
 <input type="submit" value="Submit">
</form>
Step 2: employee_details.php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 $name = $_POST['emp_name'];
 $id = $_POST['emp_id'];
 $dept = $_POST['emp_dept'];
 $salary = $_POST['emp_salary'];
 echo "<h3>Employee Details</h3>";
 echo "Name: $name<br>";
 echo "ID: $id<br>";
 echo "Department: $dept<br>";
 echo "Salary: ₹$salary<br>";
}
?>
Output
Employee Details
Name: Raju
ID: 101
Department: CS
Salary: $15000
10
PHP-MySQL - III B.Sc(CS-Major/Minor)
5. Write a PHP program to prepare the student marks list.
Step 1: student_form.html
<!-- Save as student_form.html -->
<form method="post" action="student_marks.php">
 <h3>Enter Student Details</h3>
 Name: <input type="text" name="name"><br><br>
 Roll No: <input type="text" name="roll"><br><br>

 <h4>Enter Marks (Out of 100):</h4>
 Maths: <input type="number" name="maths"><br><br>
 Science: <input type="number" name="science"><br><br>
 English: <input type="number" name="english"><br><br>

 <input type="submit" value="Submit">
</form>
Step 2: student_marks.php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 $name = $_POST['name'];
 $roll = $_POST['roll'];
 $maths = $_POST['maths'];
 $science = $_POST['science'];
 $english = $_POST['english'];
 $total = $maths + $science + $english;
 $average = $total / 3;
 echo "<h3>Student Marks List</h3>";
 echo "Name: $name<br>";
 echo "Roll No: $roll<br>";
11
PHP-MySQL - III B.Sc(CS-Major/Minor)
 echo "Maths: $maths<br>";
 echo "Science: $science<br>";
 echo "English: $english<br>";
 echo "<strong>Total Marks: $total</strong><br>";
 echo "<strong>Average Marks: " . number_format($average, 2) . "</strong><br>";
 // Optional: Grade
 if ($average >= 90) {
 $grade = "A+";
 } elseif ($average >= 75) {
 $grade = "A";
 } elseif ($average >= 60) {
 $grade = "B";
 } elseif ($average >= 40) {
 $grade = "C";
 } else {
 $grade = "Fail";
 }
 echo "<strong>Grade: $grade</strong>";
}
?>
Sample Output:
Student Marks List
Name: Raju
Roll No: 101
Maths: 85
Science: 90
English: 78
Total Marks: 253
12
PHP-MySQL - III B.Sc(CS-Major/Minor)
Average Marks: 84.33
Grade: A
6.Create student registration form using text box, check box, radio button, select,
submit button. And display user inserted value in new PHP page.
Step 1: registration_form.html
<!-- Save as registration_form.html -->
<form method="post" action="display_student.php">
 <h2>Student Registration Form</h2>
 Name: <input type="text" name="name" required><br><br>
 Email: <input type="email" name="email" required><br><br>
 Gender:
 <input type="radio" name="gender" value="Male" required> Male
 <input type="radio" name="gender" value="Female"> Female
 <br><br>
 Course:
 <select name="course">
 <option value="B.Tech">B.Tech</option>
 <option value="B.Sc">B.Sc</option>
 <option value="B.Com">B.Com</option>
 <option value="BA">BA</option>
 </select><br><br>
 Hobbies:<br>
 <input type="checkbox" name="hobbies[]" value="Reading"> Reading<br>
 <input type="checkbox" name="hobbies[]" value="Music"> Music<br>
 <input type="checkbox" name="hobbies[]" value="Sports"> Sports<br><br>
13
PHP-MySQL - III B.Sc(CS-Major/Minor)
 <input type="submit" value="Register">
</form>
Step 2: display_student.php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 $name = $_POST['name'];
 $email = $_POST['email'];
 $gender = $_POST['gender'];
 $course = $_POST['course'];
 $hobbies = isset($_POST['hobbies']) ? $_POST['hobbies'] : [];
 echo "<h2>Student Registration Details</h2>";
 echo "Name: $name<br>";
 echo "Email: $email<br>";
 echo "Gender: $gender<br>";
 echo "Course: $course<br>";
 echo "Hobbies: ";
 if (!empty($hobbies)) {
 echo implode(", ", $hobbies);
 } else {
 echo "None";
 }
}
?>
7.Create Website Registration Form using text box, check box, radio button, select,
submit button. And display user inserted value in new PHP page.
Step 1: website_registration_form.html
<!DOCTYPE html>
<html>
14
PHP-MySQL - III B.Sc(CS-Major/Minor)
<head>
 <title>Website Registration Form</title>
</head>
<body>
 <h2>Website Registration Form</h2>
 <form method="post" action="registration_output.php">
 Full Name: <input type="text" name="fullname" required><br><br>
 Username: <input type="text" name="username" required><br><br>
 Password: <input type="password" name="password" required><br><br>
 Gender:<br>
 <input type="radio" name="gender" value="Male" required> Male<br>
 <input type="radio" name="gender" value="Female"> Female<br><br>
 Select Your Country:
 <select name="country" required>
 <option value="">--Select--</option>
 <option value="India">India</option>
 <option value="USA">USA</option>
 <option value="UK">UK</option>
 <option value="Canada">Canada</option>
 </select><br><br>
 Hobbies:<br>
 <input type="checkbox" name="hobbies[]" value="Reading"> Reading<br>
 <input type="checkbox" name="hobbies[]" value="Traveling"> Traveling<br>
 <input type="checkbox" name="hobbies[]" value="Gaming"> Gaming<br>
 <input type="checkbox" name="hobbies[]" value="Cooking"> Cooking<br><br>
15
PHP-MySQL - III B.Sc(CS-Major/Minor)
 <input type="submit" value="Register">
 </form>
</body>
</html>
Step 2: registration_output.php
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 $fullname = $_POST['fullname'];
 $username = $_POST['username'];
 $password = $_POST['password']; // In real apps, NEVER display or store plain
passwords
 $gender = $_POST['gender'];
 $country = $_POST['country'];
 $hobbies = isset($_POST['hobbies']) ? $_POST['hobbies'] : [];
 echo "<h2>User Registration Details</h2>";
 echo "Full Name: $fullname<br>";
 echo "Username: $username<br>";
 echo "Password: ****** (hidden)<br>"; // Hide actual password
 echo "Gender: $gender<br>";
 echo "Country: $country<br>";
 echo "Hobbies: ";
 if (!empty($hobbies)) {
 echo implode(", ", $hobbies);
 } else {
 echo "None";
 }
}
?>
16
PHP-MySQL - III B.Sc(CS-Major/Minor)
Sample Output
User Registration Details
Full Name: Raju Kumar
Username: rajukumar25
Password: ****** (hidden)
Gender: Male
Country: India
Hobbies: Reading, Gaming
8. Write PHP script to demonstrate passing variables with cookies.
Step 1: set_cookie.php
<?php
// Set a cookie named "username" with value "Raju" that expires in 1 hour
setcookie("username", "Raju", time() + 3600); // 3600 seconds = 1 hour
echo "Cookie has been set. <a href='get_cookie.php'>Click here to go to next page</a>";
?>
Step 2: get_cookie.php
<?php
if (isset($_COOKIE["username"])) {
 $user = $_COOKIE["username"];
 echo "Welcome back, $user!";
} else {
 echo "No cookie found. Please visit set_cookie.php first.";
}
?>
Sample Output:
After visiting set_cookie.php
Cookie has been set. Click here to go to next page
On get_cookie.php
17
PHP-MySQL - III B.Sc(CS-Major/Minor)
Welcome back, Raju!
9. Write a PHP script to connect MySQL server from your website.
Step-by-Step: PHP Script to Connect MySQL
connect_mysql.php
<?php
// Step 1: Define MySQL server connection parameters
$servername = "localhost"; // or IP address, e.g., "127.0.0.1"
$username = "root"; // replace with your MySQL username
$password = ""; // replace with your MySQL password
$database = "testdb"; // replace with your database name
// Step 2: Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Step 3: Check connection
if (!$conn) {
 die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully to MySQL database!";
?>
Sample Output:
Connected successfully to MySQL database!
10. Write a program to keep track of how many times a visitor has loaded the page.
PHP Script: page_counter.php
<?php
// Check if the cookie exists
if (isset($_COOKIE['visit_count'])) {
18
PHP-MySQL - III B.Sc(CS-Major/Minor)
 // Read current value and increment
 $visitCount = $_COOKIE['visit_count'] + 1;
} else {
 // First visit
 $visitCount = 1;
}
// Set/update the cookie with the new value (expires in 1 hour)
setcookie('visit_count', $visitCount, time() + 3600);
echo "<h2>Page Visit Counter</h2>";
echo "You have visited this page <strong>$visitCount</strong> times.";
?>
Sample Output:
Page Visit Counter
You have visited this page 1 times.
Then refresh the page:
You have visited this page 2 times.
