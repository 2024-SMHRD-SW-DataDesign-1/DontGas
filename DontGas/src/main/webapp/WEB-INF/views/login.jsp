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
                            
                            
                             <!-- �α��� �ڽ� -->
                            <div class="login-box">
                                <div class="login-card shadow-lg border-0 rounded-lg">
                                    <div class="login-header"><h3 class="login-title">Login</h3></div>
                                    <div class="card-body">
                                    
                                        <!-- �α��� �� -->
                                        <form action="/loginProc" method="post" name = "loginForm">
                                        
                                            <!-- ���̵� �Է� -->
                                            <div class="mb-3">
                                                <label class="login-label login-label-id" for="inputId">ID</label>
                                                <input class="login-form" id="inputId" type="text" placeholder="���̵� �Է��ϼ���" name="accId"/>
                                            </div>
                                            
                                            <!-- ��й�ȣ �Է� -->
                                            <div class="mb-3">
                                                <label class="login-label login-label-pw" for="inputPassword">Password</label>
                                                <input class="login-form" id="inputPassword" type="password" placeholder="��й�ȣ�� �Է��ϼ���" name="accPw"/>
                                            </div>
                                            
                                            <!-- CSRF ��ū -->
                                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                            
                                            <!-- �α��� ��ư -->
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <input class="login-btn" type="submit" value="Login">
                                            </div>
                                            
                                            <!--  �ӽ� ��ư -->
                                            <button><a href="list">list �ӽ� �̵� ��ư</a></button>
                                            <button><a href="info">info �ӽ� �̵� ��ư</a></button>

                                        </form>
                                        
                                    </div>
                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                </main>
            </div>
            
            
            <!-- ��Ʈ��� ��ư -->
            <img id="modbtn" src="/images/darkpig.png" alt="��ũ��� ��ư" onclick="toggleDarkMode()"
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