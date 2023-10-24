<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap');

.wrapper{
    max-width: 500px;
    width: 200%;
    background-color: #1E0A3C;
    margin: auto;
    padding: 30px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    border-radius: 20px;
    margin-bottom: 20px;
  	margin-right:300px;
}


.wrapper .title{
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 25px;
    color:#d05716;
    text-transform: uppercase;
    text-align: center;
}

h2{
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 25px;
    color: #d05716;
    text-transform: uppercase;
    text-align: center;
}


.wrapper .form .input_field{
    margin-bottom: 15px;
    display: flex;
    align-items: center;
    border-color: #d05716;
    color: gray;
}

.wrapper .form .input_field .gender{
    margin-bottom: 30px;
    
}



.wrapper .form .input_field .input,
.wrapper .form .input_field .textarea{
    width: 100%;
    outline: none;
    border: 1px #2d2a30;
    font-size: 15px;
    padding: 8px 10px;
    border-radius: 3px;
    transition: all 0.3s ease;
    background-color: #f8fafd;
}

.wrapper .form .input_field .textarea{
    resize: none;
    height: 125px;
}

.wrapper .form .input_field .custom_select{
    position: relative;
    width: 100%;
    height: 37px;
}

.wrapper .form .input_field .custom_select select{
    -webkit-appearance: none;
    appearance: none;
    border: 1px solid #33383b;
    width: 100%;
    height: 100%;
    padding: 8px 10px;
    border-radius: 3px;
    outline: none;
}

.wrapper .form .input_field .custom_select:before{
    content: "";
    position: absolute;
    top: 12px;
    right: 10px;
    border: 8px solid;
    border-color: #8f9296 transparent transparent transparent;
    pointer-events: none;
}

.wrapper .form .input_field .input:focus,
.wrapper .form .input_field .textarea:focus,
.wrapper .form .input_field select:focus{
    border: 1px #2d2a30;
}

.wrapper .form .input_field p{
    font-size: 14px;
    color: #d05716;
}

.wrapper .form .input_field .check{
    width: 15px;
    height: 15px;
    position: relative;
    display: block;
    cursor: pointer;
}







.wrapper .form .input_field .btn{
    width: 100%;
    padding: 8px 10px;
    font-size: 15px;
    border: 0;
    background-color: #39557a;
    color: #e4e8ed;
    cursor: pointer;
    border-radius: 3px;
    outline: none;
}

.wrapper .form .input_field .btn:last-child{
    margin-bottom: 0;
}

.wrapper .form .input_field .btn:hover{
    background: #1c2b4060;
}

.bgc{
   

    background-size: cover;
    width: 100%;
    
}
.btn{
  width: 100%;
  padding: 8px 10px;
  font-size: 15px;
  border: 0;
  background-color: #39557a;
  color: #e4e8ed;
  cursor: pointer;
  border-radius: 3px;
  outline: none;
}
.btn:last-child{
  margin-bottom: 0;
}

.btn:hover{
  background: #1c2b4060;}
  
  body {
  margin-top:80px;
  padding: 0;
  background-image: url("https://img.freepik.com/free-photo/festival-concert-show-theme-blur-background_1385-1400.jpg?w=1060&t=st=1698175326~exp=1698175926~hmac=44f119880aa0bfaac40c330c2a5ed15db5d6822c2c93cfa4f1ac4ed15d248f01");
  background-size: cover; 
  background-repeat: no-repeat; 
  background-attachment: fixed; 
  background-position: center center; 
 
}

</style>
</head>
<body>
<div class="margin">
    <div class="wrapper">
        <div class="title">
            Register
        </div>
<div class="form">
<form action="SignupServlet" method="post" id="signupForm">
                <div class="input_field">
                    <input type="text" class="input" placeholder="Name" name="name">
                </div>
            
           
            
            <div class="input_field">
                <input type="text" class="input" placeholder="E-mail Address" id="email" name="email">
            </div>
             <div class="input_field">
                <textarea class="textarea" placeholder="Address" name="address"></textarea>
            </div>
            
            <div class="input_field">
                <input type="text" class="input" placeholder="Phone Number" id="phoneNumber" name="phone">
            </div>
            <div class="input_field">
                <input type="text" class="input" placeholder="User Name" id="email" name="username">
            </div>
             <div class="input_field">
                <input type="password" class="input" placeholder="Password" id="password" name="password">
            </div>
            
           
            <div class="input_field terms">
                <label class="check">
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <p>Agreed to terms and conditions</p>
            </div>
            <div class="input_field">
                <input type="submit" value="Register" class="btn" name="submit">
            </div>
        </form>
        </div>
        </div>
        </div>
</body>
</html>

<jsp:include page="./Footer.jsp"/>