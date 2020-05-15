<%@page import="com.UploadDTO"%>
<%@page import="com.UploadDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

	
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <title>FingerPrintShot</title>
</head>
<body>
	
    <div id="page1">
        <header>
            <div class="logo"><img src="img/logo_white.png" alt=""></div>
        </header>
        <aside>

        </aside>
        <section>
            <button class="start">START</button>
            <button class="result">RESULT</button>
            
            <!-- <button class="result">RESULT</button> -->
        </section>
        <aside>
            <div class="move">
                <div class="page_move page1" style="background-color:#FFFFFF; border:2px solid #FFFFFF;"></div>
                <div class="page_move page2" style="border:2px solid #FFFFFF;"></div>
                <div class="page_move page3" style="border:2px solid #FFFFFF;"></div>
            </div>
        </aside>
    </div>
    <div id="page2">
        <aside>

        </aside>
        <section>
       		<form action="UploadService" method="post" enctype="multipart/form-data" >
            <!-- <form action="http://localhost:9000/" method="post"> -->
                <div class="upload">
                    <label for="image" class="image">
                        <img src="img/upload.png" alt="Not exist image">
                    </label>s
                    <input type="file" id="image" name="image" style="display: none;">
                    
                </div>
                <div class="image_preview" id="fade_in">
                    <div class="image_layer">
                    	
                        <img src="#" />
                        <div class="btn_part">
                            <button type="submit" class="change">CHANGE</button>
                            <button class="cancel">CANCEL</button>
                        </div>
                    </div>
                </div>

            </form>
        </section>
        <aside>
            <div class="move">
                <div class="page_move page1" style="border:2px solid #c1c0c0;"></div>
                <div class="page_move page2" style="background-color:#818182; border:2px solid #818182;"></div>
                <div class="page_move page3" style="border:2px solid #5c5c5c;"></div>
            </div>
        </aside>
    </div>
   
   
   
    <div id="page3">
        <aside>

        </aside>
        <section>
            <div class="sns">
           <%-- <a href="img2/${sessionScope.dto.filename }" download> --%>
           		<a href="img2/imgfile.jpg" download>
                <img src="img/download.png" alt="" class="download">
              	</a>
                <img src="img/twitter.png" alt="" class="sns_tag twitter">
                <img src="img/instagram.png" alt="" class="sns_tag instagram">
                <img src="img/facebook.png" alt="" class="sns_tag facebook">
            </div>
           
            <div class="picture">
                <div class="picture1">
                <c:if test="${not empty sessionScope.dto.filename }">
				<img src = "img/${sessionScope.dto.filename }" class = "result before">
				</c:if>
			</div>
                <div class="picture2">
                <%--<img src="img2/${sessionScope.dto.filename }" class="result after" alt=""/>  --%>
                	<img src="img2/imgfile.jpg" class="result after" alt=""/>
                	
                	<%
                		if(session.getAttribute("dto")!=null){
	                		UploadDTO dto = (UploadDTO)session.getAttribute("dto");
						    String filename = dto.getFilename();
						    String file_type = filename.substring(filename.length()-4, filename.length());
		            		int height = Integer.parseInt(request.getParameter("h"));
		            		int width = Integer.parseInt(request.getParameter("w"));
		            		String time = request.getParameter("t");
		            		UploadDTO dto3 = new UploadDTO(filename, time, file_type, width, height);
		            		UploadDAO dao = new UploadDAO();
		            		
		            		dao.update(dto3);
							
                		}
                	
                	// String result = str.substring(str.length()-3, str.length());
					%>
                	
                	<%--
                	int pi = 1;
                	if(session.getAttribute("dto")!=null){
                		
                	String filename = (String)session.getAttribute("dto");
            		String file_type = filename.substring(-4);
            		int height = Integer.parseInt(request.getParameter("h"));
            		int width = Integer.parseInt(request.getParameter("w"));
            		
            		UploadDTO dto3 = new UploadDTO(filename, file_type, width, height);
            		UploadDAO dao = new UploadDAO();
            		
            		dao.update(dto3);
                	}
                	--%>
                </div>
            </div>
        </section>
        <aside>
            <div class="move">
                <div class="page_move page1" style="border:2px solid #c1c0c0;"></div>
                <div class="page_move page2" style="border:2px solid #818182;"></div>
                <div class="page_move page3" style="background-color:#5c5c5c; border:2px solid #5c5c5c;"></div>
            </div>
        </aside>
    </div>
    
    <div id="page5">
        <div class="line l_top"></div>
        <footer>
            <div class="col">
                <h4>상호 : FPS(FingerPrintShot)</h4>
                <h4>대표 : 박주윤(jooyoon@smhrd.or.kr)</h4>
                <h4>주소 : 광주 남구 송암로 60 2층(송하동)</h4>
                <h4>개인정보 관리 책임자 : 이다빈(dabin@smhrd.or.kr)</h4>
                <h4>지문관리자 : 박원우(wonwoo@smhrd.or.kr)</h4>
                
            </div>
            <div class="col">
                <h4>근무 시간 : 9am - 6pm</h4>
                <h4>점심 시간 : 1pm - 2pm</h4>
                <h4>상담 번호 : 070-2020-0508</h4>
                <h4>고객센터 : www.smhrd.or.kr</h4>
                <h4>상담 관리자 : 엄동식(dongsik@smhrd.or.kr)</h4>
            </div>
            <div class="col">
                <h4>광고 대행사 : 김인호(inho@smhrd.or.kr)</h4>
                <h4>모델 신청 : fps@smhrd.or.kr</h4>
                <h4>지문 발급 신청 관리 번호 : 110-2522-5551</h4>
                <h4>지문 처리 대행사 번호 : 11-1152-11111</h4>
                <h4>지문 처리 관리자 : 최준혁(junhyuk@smhrd.or.kr)</h4>
            </div>
            <div class="col">
                <h4>기술 관리국 전화 : 010-2020-0508</h4>
                <h4>기술 관리국 소장 : 박승현(seunghyeon@smhrd.or.kr)</h4>
                <h4>기술 관리 번호 : 110-2522-5551</h4>
                <h4>회사 법인 번호 : 11-3333-11111</h4>
                <h4>회사 신념 : 지문 잃고 손가락 고치지 말자</h4>
            </div>
        </footer>
        <div class="line l_bottom"></div>
    </div>

</body>

<script src="main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

<!-- 자연스러운 이동 스크롤 -->
<script>
        //page_move div에서 btn만들기

    const page_moves = document.querySelectorAll('.page_move');
    const start = document.querySelector('.start');
    const result = document.querySelector('.result');

    start.addEventListener('click', function(){
        fnMove('#page2');
    })
    result.addEventListener('click', function(){
        fnMove('#page3');
    })
    for(let i=0; i<3; i++){
        page_moves[i*3].addEventListener('click', function(){
           
            fnMove('#page1');
            
        });
        page_moves[i*3+1].addEventListener('click', function(){
            fnMove('#page2');
        });
        page_moves[i*3+2].addEventListener('click', function(){
            fnMove('#page3');
        });        
    }

    function fnMove(seq){
        var scrollPosition = $(seq).offset().top;
       
        $("html, body").animate({
            scrollTop: scrollPosition
        }, 500);
        
    }
    
    //result 버튼 만들기
    /* const page2 = document.querySelectorAll('section');
    console.log(page2[0]);
    let btn_result = document.createElement('button');
    let text_result = document.createTextNode('RESULT');
    btn_result.appendChild(text_result);
    page2[0].appendChild(btn_result);
    btn_result.className('result'); */
    
</script>

<!-- 파일 업로드 미리보기 -->
<script>

    const upload = document.querySelector('.upload');
    const image_preview = document.querySelector('.image_preview');
    
    $('#image').on('change', function() {
        
        
        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        
        //배열에 추출한 확장자가 존재하는지 체크
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) { //inArray 이 단어가 이 배열안에 있는지 있으면 인덱스 반환
            resetFormElement($(this)); //폼 초기화
            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
        } else {
            file = $('#image').prop("files")[0]; //input의 속성 file을 가져온다
           
            blobURL = window.URL.createObjectURL(file); //file에 들어간 URL가져오기
            console.log(blobURL);
            $('.image_preview img').attr('src', blobURL); //src에 대입
            upload.id = 'fade_in';
            image_preview.id = '';
            
        }
    });

     /**
    onclick event handler for the delete button.
    It removes the image, clears and unhides the file input field.
    */
    $('.cancel').bind('click', function() {
        resetFormElement($('#image')); //전달한 양식 초기화
        //$('#image').slideDown(); //파일 양식 보여줌
    
        //미리 보기 영역 감춤
        upload.id = '';
        image_preview.id = 'fade_in';
        
    });

    $('.cancel').on('click',function(){
        
        return false; //기본 이벤트 막음
    })
        

    /** 
    * 폼요소 초기화 
    * Reset form element
    * 
    * @param e jQuery object
    */
    function resetFormElement(e) {
        e.wrap('<form>').closest('form').get(0).reset(); 
        //리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
        //요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
        //DOM에서 제공하는 초기화 메서드 reset()을 호출
        e.unwrap(); //감싼 <form> 태그를 제거
    }

</script>



</html>