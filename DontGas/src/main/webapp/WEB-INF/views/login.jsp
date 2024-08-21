<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Don't Gas - Login</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/lightstyles.css" rel="stylesheet" id="theme-style"/>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>

    </head>
    <body class="login-bg">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container-xl px-4">
                        <div class="row justify-content-center">
                            <div class="login-box">
                                <!-- Basic login form-->
                                <div class="login-card shadow-lg border-0 rounded-lg">
                                    <div class="login-header"><h3 class="login-title">Login</h3></div>
                                    <div class="card-body">
                                        <!-- Login form-->
                                        <form>
                                            <!-- Form Group (email address)-->
                                            <div class="mb-3">
                                                <label class="login-label" for="inputEmailAddress">ID</label>
                                                <input class="login-form" id="inputEmailAddress" type="text" placeholder="Enter ID" />
                                            </div>
                                            <!-- Form Group (password)-->
                                            <div class="mb-3">
                                                <label class="login-label" for="inputPassword">Password</label>
                                                <input class="login-form" id="inputPassword" type="password" placeholder="Enter password" />
                                            </div>
                                            <!-- Form Group (login box)-->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="login-btn" href="user-management-list.html">Login</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
            <img id="modbtn" src="../resources/static/images/darkpig.png" alt="다크모드 버튼" onclick="toggleDarkMode()">

            <div id="layoutAuthentication_footer">
                <footer class="footer-admin mt-auto footer-dark">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="copyright-footer">Copyright &copy; Don't Gas 2024</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="js/Darkmode.js"></script>
    </body>
</html>