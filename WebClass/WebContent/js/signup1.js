     $(document).ready(function(){
        $('#loginForm').submit(function(event){
           // 자동으로 submit되는 걸 막기
           event.preventDefault();
           
           // id,pw값 가져오기
           // document.getElementById("id").value
           var name = $('#name').val();
           
           // 서버로  post 전속(ajax)
         $.post("http://httpbin.org/post",
               {"name":name},
               function(data){
                 var myModal = $('#myModal');
                 myModal.modal();
                 myModal.find('.modal-body').text(data.form.name + '님 회원가입 되었습니다.');
               });
        });
     });