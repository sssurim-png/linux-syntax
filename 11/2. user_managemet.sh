#사용자 추가 및 비밀번호 지정
sudo useradd newuser1
passwd newuser1

#sudo : root의 권한으로 실행 -> root의 비밀번호가 아닌, 현재 사용자의 비밀번호를 입력

#su : 사용자 변경 -> 변경하고자 하는 계정의 비밀번호
su - newuser1

#chmod는 권한 변경 : u(소유자)g(그룹)o(그 외)로 구성. ex) rwxrw-r--
#r:4, w:2, x:1
ex.
chmod 644 파일명 
chmod u+x 파일명
chmod g-x 파일명
chmod o=r 파일명

#chown은 소유자: 그룹 변경 
sudo chown newuser1:newuser1 파일명
chown 소유자:소유그룹 파일명