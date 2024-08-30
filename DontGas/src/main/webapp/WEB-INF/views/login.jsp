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
                            
                            
                             <!-- 로그인 박스 -->
                            <div class="login-box">
                                <div class="login-card shadow-lg border-0 rounded-lg">
                                    <div class="login-header"><h3 class="login-title">Login</h3></div>
                                    <div class="card-body">
                                    
                                        <!-- 로그인 폼 -->
                                        <form action="/loginProc" method="post" name = "loginForm">
                                        
                                            <!-- 아이디 입력 -->
                                            <div class="mb-3">
                                                <label class="login-label login-label-id" for="inputId">ID</label>
                                                <input class="login-form" id="inputId" type="text" placeholder="아이디를 입력하세요" name="accId"/>
                                            </div>
                                            
                                            <!-- 비밀번호 입력 -->
                                            <div class="mb-3">
                                                <label class="login-label login-label-pw" for="inputPassword">Password</label>
                                                <input class="login-form" id="inputPassword" type="password" placeholder="비밀번호를 입력하세요" name="accPw"/>
                                            </div>
                                            
                                            <!-- CSRF 토큰 -->
                                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                            
                                            <!-- 로그인 버튼 -->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <input class="login-btn" type="submit" value="Login">
                                            </div>
                                            
                                            <!--  임시 버튼 -->
                                            <button><a href="list">list 임시 이동 버튼</a></button>
                                            <button><a href="info">info 임시 이동 버튼</a></button>

                                        </form>
                                        
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </main>
            </div>
            
            
            <!-- 다트모드 버튼 -->
            <img id="modbtn" src="/images/darkpig.png" alt="다크모드 버튼" onclick="toggleDarkMode()"
            data-light-src="/images/lightpig.png" data-dark-src="${pageContext.request.contextPath}/images/darkpig.png">



			<!-- Footer -->
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
        <script src="/js/darkmode.js"></script>
    </body>
</html>