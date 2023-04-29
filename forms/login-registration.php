<?php
session_start();
include_once('../database/dbconn.php');
include_once('../database/function.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/login-registration.css">

    <title>Sign in & Sign up Form</title>

</head>

<body>
    <div class="main_container">
        <div class="forms-container">
            <div class="signin-signup">

                <form id="signinfrm" method="post" class="sign-in-form">

                    <h2 class="title">Sign in</h2>

                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="email" placeholder="Email" name="luseremail" required />
                    </div>

                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" name="luserpass" required />
                    </div>

                    <input type="submit" value="Login" name="login" class="btn">

                </form>



                <form id="signupfrm" method="post" class="sign-up-form">

                    <h2 class="title">Registration</h2>

                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input type="text" id="uname" placeholder="Username" name="username" autocomplete="off"
                            required />
                    </div>
                    <span id="username" style="color: red; font-weight: bold;" ></span>

                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input type="email" id="uemail" placeholder="Email" name="useremail" autocomplete="off"
                            required />
                    </div>
                     <span id="useremail" style="color: red; font-weight: bold;" ></span>

                    <div class="input-field">
                        <i class="fas fa-phone-alt"></i>
                        <input type="text" maxlength="10" id="uphone" placeholder="Phone Number" name="userphn" autocomplete="off"
                            required />
                    </div>
                    <span id="userphoneno" style="color: red; font-weight: bold;" ></span>

                    <div class="input-field">
                    <i class="fas fa-road"></i>
                        <input type="text"  id="ustate" placeholder="State" name="ustate" autocomplete="off"
                            required />
                    </div>
                    <span id="userstate" style="color: red; font-weight: bold;" ></span>

                    
                    <div class="input-field">
                        <i class="fas fa-globe"></i>
                        <input type="text"  id="ucon" placeholder="Country" name="ucon" autocomplete="off"
                            required />
                    </div>
                    <span id="usercon" style="color: red; font-weight: bold;" ></span>
                   
                    
                    <div style="display:inline; text-align:center;" class="input-field">
                    <i class="fas fa-user-tag"></i>
                        <label style="padding-left: 10px;"><input type="radio"  id="uroles" name="urole" value="student"  /> Student</label> 
                        <label style="padding-left: 6px;"><input type="radio"  id="urolehw" name="urole" value="house owner" /> House Owner</label>
                        <label style="padding-left: 6px;"><input type="radio"  id="urolesw" name="urole" value="shop owner" /> Shop Owner</label>
                    </div>
                    <span id="userrole" style="color: red; font-weight: bold;" ></span>

                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="upass" placeholder="Password" name="userpass" autocomplete="off"
                            required />
                    </div>
                    <span id="userpass" style="color: red; font-weight: bold;" ></span>

                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="ucfpass" placeholder="Confirm Password" name="usercfpass"
                            autocomplete="off" required />
                    </div>
                    <span id="usercfpass" style="color: red; font-weight: bold;" ></span>

                    <input type="submit" id="rgistbtn" class="btn" name="registration" value="Registration">

                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here ?</h3><br>

                    <button class="btn transparent" id="sign-up-btn">
                        Sign up
                    </button>
                </div>
                <img src="img/world.svg" class="image" alt="images" />
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One Of Our User?</h3><br>

                    <button class="btn transparent" id="sign-in-btn">
                        Sign in
                    </button>
                </div>
                <img src="img/book-lover-1.svg" class="image" alt="images" />
            </div>
        </div>
    </div>

<?php
	
	if (isset($_POST['registration'])) {
		$uname 		= mysqli_real_escape_string($conn,$_POST['username']);
		$uemail 	= mysqli_real_escape_string($conn,$_POST['useremail']);
		$uphn 		= mysqli_real_escape_string($conn,$_POST['userphn']);
        $ustate     = mysqli_real_escape_string($conn,$_POST['ustate']);
        $ucon       = mysqli_real_escape_string($conn,$_POST['ucon']);
        $urole      = mysqli_real_escape_string($conn,$_POST['urole']);
		$upass 		= mysqli_real_escape_string($conn,$_POST['userpass']);
        $ucfpass    = mysqli_real_escape_string($conn,$_POST['usercfpass']);
		
		$pass = password_hash($upass,PASSWORD_BCRYPT);
        $cfpass = password_hash($ucfpass,PASSWORD_BCRYPT);

        $emailqry = "SELECT * FROM users WHERE uemail='$uemail'";
        $emailqryexe = mysqli_query($conn,$emailqry);

        $emailcount = mysqli_num_rows($emailqryexe);
    
    if ($emailcount>0) {
            echo"<script>";
            echo "alert('Email is already exists')";
            echo"</script>";
    }
    else{
      if($upass === $ucfpass)
      {
        $insqry  =  "INSERT INTO users (uname, uemail, umobile, ustate, ucon, upwd, urole) VALUES ('$uname', '$uemail', '$uphn', '$ustate', '$ucon', '$pass', '$urole')"; 

        $exe = mysqli_query($conn,$insqry);

        if (!$exe) {
            echo "<script>alert('Registration is Failed')</script>";
          }
          else{
            echo "<script>alert('Registration Successful')</script>";
        }

      }else{
            echo "<script>alert('Passwords are not matching')</script>";
      }
    }
		
	}

    if(isset($_POST['login']))
    {
		$luseremail	= $_POST['luseremail'];
		$luserpass	= $_POST['luserpass'];

        $email_search = "SELECT * from users WHERE uemail = '$luseremail'";

        $exeqry = mysqli_query($conn, $email_search);

        $email_count = mysqli_num_rows($exeqry);
    
        if ($email_count) 
        {
            $email_pass = mysqli_fetch_assoc($exeqry);

            $db_pass = $email_pass['upwd'];

            $pass_decode = password_verify($luserpass, $db_pass);
            
            $_SESSION['IS_LOGIN'] = $email_pass['urole'];
            $_SESSION['UID'] = $email_pass['uid'];
            $_SESSION['UNAME'] = $email_pass['uname'];
            $_SESSION['UEMAIL'] = $email_pass['uemail'];
            $_SESSION['UPHN'] = $email_pass['umobile'];

            if ($pass_decode) 
            {
            echo"<script>alert('Login Successful')</script>";
            redirect('../index.php');

            }
            else
            {
            echo"<script>alert('Password is incorrect')</script>";
            }
        }else
        {
            echo"<script>alert('Email is invalid')</script>";
        } 
		
	}
	
 ?>

    <script>
    
        const sign_in_btn = document.querySelector("#sign-in-btn");
        const sign_up_btn = document.querySelector("#sign-up-btn");
        const container = document.querySelector(".main_container");

        sign_up_btn.addEventListener("click", () => {
            container.classList.add("sign-up-mode");
        });

        sign_in_btn.addEventListener("click", () => {
            container.classList.remove("sign-up-mode");
        });

    </script>

</body>
</html>