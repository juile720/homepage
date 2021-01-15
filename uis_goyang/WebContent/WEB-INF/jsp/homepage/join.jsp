<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width" , initial-scale="1">
    <link rel="stylesheet" href="css/join.css">
    <title>homepage</title>
</head>

<body>
    <div class="container">
        <div class="cal-lg-4">
            <div class="jumbotron" style="padding-top: 20px;">
                <form method="post" action="joinAction.do">
                    <h3 style="text-align: center; color : #0889cf; font-weight: 400;">관리자 페이지 입니다</h3>
                    <div id="box">
                        <h3 id="men" style="color: #2bab33; font-weight: 500; margin-left: 20px;">회원가입</h3>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
                        </div>
                        <div class="checkDiv">
                            <div class="agree">
                                <div class="agree_chk">
                                    <input type="checkbox" style="margin-top: 5px;" name="chk_agree" id="agree">
                                </div>
                                <label for="agree"><h3 style="font-size: 0.8em; color: black; font-weight: 500; margin-left : 5px; margin-right: 0; width: 170px; display: inline;">개인정보 수집 및 이용 동의</h3></label>
                            </div>

                            <p class="check" style="font-size: 0.8em;" > 집두꺼비는 「개인정보보호법」 제15조제1항제1호, 제17조제1항제1호, 제23조제1호, 제24조제1항 제1호에 따라
                                아래와 같이 개인정보의 수집. 이용에 관하여 귀하의 동의를 얻고자 합니다.

                                집두꺼비는 이용자의 사전 동의 없이는 이용자의 개인정보를 함부로 공개하지 않으며, 수집된 정보는 아래와 같이 이용하고 있습니다.
                                이용자가 제공한 모든 정보는 아래의 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 이를 알리고 동의를 구할 것입니다.

                                개인정보의 수집 및 이용 동의
                                1. 개인정보의 수집 및 이용 목적
                                가. 서비스 제공에 관한 업무 이행 - 컨텐츠 제공, 특정 맞춤 서비스 제공(마이페이지, 뉴스레터 등), 기업 애로상담
                                나. 회원관리
                                - 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 공지사항 전달

                                2. 수집하는 개인정보의 항목
                                <개인회원 가입>
                                    필수항목 : 아이디, 비밀번호, 이름, 핸드폰번호, 이메일, 암호화된 이용자 확인값(CI)
                                    선택항목 : 이메일 수신여부, 문자수신여부, 웹진구독여부
                                    <기업회원 가입>
                                        필수항목 : 아이디, 비밀번호, 담당자 이름, 담당자 전화번호, 핸드폰번호, 이메일, (법인기업의 경우 법인등록번호), 기업정보(회사명, 대표자명, 사업자등록번호, 회사전화번호, 주소, 지역, 대표업종), 암호화된 이용자 확인값(CI)
                                        선택항목 : 팩스번호, 홈페이지주소, 회사이메일주소, 창업일자, 부업종, 매출액, 수출액, 상시근로자 수, 주요생산품명, 이메일 수신여부, 문자수신여부, 이메일 수신여부, 문자수신여부, 웹진구독여부
                                        <자동수집>
                                            IP주소, 쿠키, 서비스 이용기록, 방문기록 등

                                            3. 개인정보의 보유 및 이용기간
                                            집두꺼비는 원칙적으로 보유기간의 경과, 개인정보의 수집 및 이용목적의 달성 등 그 개인정보가 불필요하게 되었을 때에는 지체 없이 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다. 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.

                                            회원정보
                                            -탈퇴 후 지체없이 파기

                                            4. 동의거부권 및 불이익
                                            정보주체는 개인정보 수집에 동의를 거부할 권리가 있습니다. 다만, 필수 항목에 대한 동의를 거부할 시 저희가 제공하는 서비스를 이용할 수 없습니다.
                            </p>
                        </div>
                        <div class="btnJoin">
                        <input type="submit" id="btn" style="padding: 5px 15px;" class="btn btn-primary"  value="회원가입">
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

</body>

</html>







 