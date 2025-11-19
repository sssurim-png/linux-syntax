
#프로세스 목록조회
ps -ef
ps -ef | grep "nginx"

#패키지 관련
#yum-레드헷계열 패키지 관리 도루, apt-데비안계열 패키지 관리도구
# 패키지 목록 최신화
sudo apt update
#nginx 등 프로그램 설치
sudo apt install nginx
#프로세스 실행관리 도욱: systemctl
sudo systemctl start nginx
sudo systemctl stop nginx
#프로세스 강제종료
sudo kill -9 PID(프로세스ID)




# 특정 도메인의 ip 주소 정보 조회 : DNS서버에 문의
nslookup google.com

# 로컬 ip 정보 조회
ifconfig

# 네트워크 연결상태 조회(상태조회) (ex.구글하고 내께 통신되는지)
# 일반적으로 ping은 보안상 막아두고 있음.
ping IP주소 (그컴이랑 나랑 통신할 수 있는지)
ping 8.8.8.8
ip : 어떤 pc의 위치
port : (그중?)어떤 프로그램으로 갈지 결정짓기
#IP와 포트를 이용해, 특정 서버의 특정 프로그램의 통신상태까지 확인가능
#일반적으로 telnet은 막혀있고, 사용하기를 권장하지 않음.
telnet : IP주소 포트번호
nc -zy IP주도(또는 도메인) 포트번호

#원격접속 : 22 port oprn(보통 22)
ssh 계정명@도메인주소(또는IP주소)

#원격파일전송 : 22 port open
scp 전송하고자하는 파일 원격지수조
