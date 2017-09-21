$(document).ready(
				function() {
					$('#loginForm').submit(
							function(event) {
								// 자동으로 submit되는 걸 막기
								event.preventDefault();

								// id,pw값 가져오기
								// document.getElementById("id").value
								var id = $('#id').val();
								var pw = $('#pw').val();
								console.log(id, pw);

								// 서버로  post 전속(ajax)
								$.post("http://httpbin.org/post", {
									"id" : id,
									"pw" : pw
								}, function(data) {
									var myModal = $('#myModal');
									myModal.modal();
									myModal.find('.modal-body').text(
											data.form.id + '님 로그인 되었습니다.');
								});
							});
				});