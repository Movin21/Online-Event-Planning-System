<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>
  body {
    background-color: #e8e8e8;
  }

  #form-ui {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 75vh;
    margin-top: 40px;
  }

  #form {
    width: 350px;
    height: 350px;
    max-width: 500px;
    padding: 50px;
    background-color: #1A0637;
    outline: 1px solid #D15716;
    box-shadow: 0px 10px 50px #1A0637;
    border-radius: 10px;
  }

  #welcome-lines {
    text-align: center;
    line-height: 1;
  }

  #welcome-line-1 {
    color: #D15716;
    font-weight: 600;
    font-size: 40px;
  }

  #welcome-line-2 {
    color: #ffffff;
    font-size: 18px;
    margin-top: 17px;
  }

  #input-area {
    margin-top: 40px;
  }

  .form-inp {
    padding: 11px 25px;
    background: transparent;
    border: 1px solid #e3e3e3;
    line-height: 1;
    border-radius: 8px;
    margin-bottom: 25px;
  }

  .form-inp input {
    width: 100%;
    background: none;
    font-size: 14px;
    color: #e3e3e3;
    border: none;
    padding: 0;
    margin: 0;
    
  }

  .form-inp input:focus {
    outline: none;
  }

  #submit-button-cvr {
    margin-top: 20px;
  }

  #submit-button {
    display: block;
    width: 100%;
    color: #D15716;
    background-color: transparent;
    font-weight: 600;
    font-size: 14px;
    margin-top: 60px;
    padding: 14px 13px 12px 13px;
    border: 0;
    outline: 1px solid #D15716;
    border-radius: 8px;
    line-height: 1;
    cursor: pointer;
    transition: all ease-in-out .3s;
  }

  #submit-button:hover {
    transition: all ease-in-out .3s;
    background-color: #D15716;
    color: #161616;
    cursor: pointer;
  }

  #signup-link {
    text-align: center;
    color: White;
    font-size: 14px;
    margin-top: 20px;
  }

  #signup-link a {
    color: #D15716;
    text-decoration: none;
    font-weight: 600;
  }
</style>
</head>
<body>
<div id="form-ui">
  <form action="loginServlet" method="post" id="form">
    <div id="form-body">
      <div id="welcome-lines">
        <div id="welcome-line-1">EventNest</div>
        <div id="welcome-line-2">Login</div>
      </div>
      <div id="input-area">
        <div class="form-inp">
          <input placeholder="Username" type="text" class="adminUsername" name="username">
        </div>
        <div class="form-inp">
          <input placeholder="Password" type="password" class="adminPassword" name="password">
        </div>
      </div>
      <div id="submit-button-cvr">
        <button id="submit-button" type="submit" name="loginbtn" class="adminLoginButton">Log in</button>
      </div>
      <div id="signup-link">
        Don't have an account? <a href="signup.jsp">Sign up</a>
      </div>
    </div>
  </form>
</div>
</body>
</html>



<jsp:include page="./Footer.jsp"/>