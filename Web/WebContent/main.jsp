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
                <h4>��ȣ : FPS(FingerPrintShot)</h4>
                <h4>��ǥ : ������(jooyoon@smhrd.or.kr)</h4>
                <h4>�ּ� : ���� ���� �۾Ϸ� 60 2��(���ϵ�)</h4>
                <h4>�������� ���� å���� : �̴ٺ�(dabin@smhrd.or.kr)</h4>
                <h4>���������� : �ڿ���(wonwoo@smhrd.or.kr)</h4>
                
            </div>
            <div class="col">
                <h4>�ٹ� �ð� : 9am - 6pm</h4>
                <h4>���� �ð� : 1pm - 2pm</h4>
                <h4>��� ��ȣ : 070-2020-0508</h4>
                <h4>������ : www.smhrd.or.kr</h4>
                <h4>��� ������ : ������(dongsik@smhrd.or.kr)</h4>
            </div>
            <div class="col">
                <h4>���� ����� : ����ȣ(inho@smhrd.or.kr)</h4>
                <h4>�� ��û : fps@smhrd.or.kr</h4>
                <h4>���� �߱� ��û ���� ��ȣ : 110-2522-5551</h4>
                <h4>���� ó�� ����� ��ȣ : 11-1152-11111</h4>
                <h4>���� ó�� ������ : ������(junhyuk@smhrd.or.kr)</h4>
            </div>
            <div class="col">
                <h4>��� ������ ��ȭ : 010-2020-0508</h4>
                <h4>��� ������ ���� : �ڽ���(seunghyeon@smhrd.or.kr)</h4>
                <h4>��� ���� ��ȣ : 110-2522-5551</h4>
                <h4>ȸ�� ���� ��ȣ : 11-3333-11111</h4>
                <h4>ȸ�� �ų� : ���� �Ұ� �հ��� ��ġ�� ����</h4>
            </div>
        </footer>
        <div class="line l_bottom"></div>
    </div>

</body>

<script src="main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

<!-- �ڿ������� �̵� ��ũ�� -->
<script>
        //page_move div���� btn�����

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
    
    //result ��ư �����
    /* const page2 = document.querySelectorAll('section');
    console.log(page2[0]);
    let btn_result = document.createElement('button');
    let text_result = document.createTextNode('RESULT');
    btn_result.appendChild(text_result);
    page2[0].appendChild(btn_result);
    btn_result.className('result'); */
    
</script>

<!-- ���� ���ε� �̸����� -->
<script>

    const upload = document.querySelector('.upload');
    const image_preview = document.querySelector('.image_preview');
    
    $('#image').on('change', function() {
        
        
        ext = $(this).val().split('.').pop().toLowerCase(); //Ȯ����
        
        //�迭�� ������ Ȯ���ڰ� �����ϴ��� üũ
        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) { //inArray �� �ܾ �� �迭�ȿ� �ִ��� ������ �ε��� ��ȯ
            resetFormElement($(this)); //�� �ʱ�ȭ
            window.alert('�̹��� ������ �ƴմϴ�! (gif, png, jpg, jpeg �� ���ε� ����)');
        } else {
            file = $('#image').prop("files")[0]; //input�� �Ӽ� file�� �����´�
           
            blobURL = window.URL.createObjectURL(file); //file�� �� URL��������
            console.log(blobURL);
            $('.image_preview img').attr('src', blobURL); //src�� ����
            upload.id = 'fade_in';
            image_preview.id = '';
            
        }
    });

     /**
    onclick event handler for the delete button.
    It removes the image, clears and unhides the file input field.
    */
    $('.cancel').bind('click', function() {
        resetFormElement($('#image')); //������ ��� �ʱ�ȭ
        //$('#image').slideDown(); //���� ��� ������
    
        //�̸� ���� ���� ����
        upload.id = '';
        image_preview.id = 'fade_in';
        
    });

    $('.cancel').on('click',function(){
        
        return false; //�⺻ �̺�Ʈ ����
    })
        

    /** 
    * ����� �ʱ�ȭ 
    * Reset form element
    * 
    * @param e jQuery object
    */
    function resetFormElement(e) {
        e.wrap('<form>').closest('form').get(0).reset(); 
        //�����Ϸ��� ����� ��Ҹ� ��(<form>) ���� ���ΰ� (wrap()) , 
        //��Ҹ� ���ΰ� �ִ� ���� ����� ��( closest('form')) ���� Dom��Ҹ� ��ȯ�ް� ( get(0) ),
        //DOM���� �����ϴ� �ʱ�ȭ �޼��� reset()�� ȣ��
        e.unwrap(); //���� <form> �±׸� ����
    }

</script>



</html>