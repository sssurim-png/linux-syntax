1.CMD
pwd: 현재 위치 경로를 출력
ls: 현재위치에서 파일 및 폴더 목록 조회
ls -l: 목록조회 자세히
ls -al: 목록조회 자세히+숨김파일까지 조회
ls -alrt: 목록조회 자세히+숨김파일까지 조회, 오래된 순 정렬

mkdir (폴더 이름_dir): 디렉토리 생성
cd (폴더 이름_dir): 특정 디렉토리로 이동
cd ..:상위 디렉토리로 이동(cd ../) 
cd /: 루트 디렉토리(최상휘 디렉토리)로 이동
cd -: 직전폴더로 이동
cd: 홈경로(/home/본인계정폴더)로 이동

/:루트경로

# 상대경로와 절대경로
# 상대경로 : cd ../ (cd ../../.. 이렇게도 가능. 세개 올라가는 것.)
cd home/ 이렇게 가면 상대경로 
# 절대경로 : cd /home 으로 시작

Tab: 단축키


# 파일 내용을 터미널 창에 출력하기
cat first_file.txt

# 파일 내용 편집기로 열기:nano(쉬움, 잘 안깔려있음), vi(어려움, 보통 기본으로 깔림)
nano first_file.txt

# 파일 내용 상위 10줄 출력하기
head 파일명
# 파일 내용 하위 10줄 출력하기
tail 파일명
# 파일 내용 하위 N개(숫자) 출력하기
tail -숫자 파일명
# 파일 내용 실시간 조회
rail -f 파일명
# 파일 페이지 단위로 조회 (있다 정도)
more 파일명

# 도스키(화살표 키) 위/아래를 통해 이전 명령어 조회
# history를 통해 이전에 실행했던 명령어 모두 조회 
# clear를 통해 터미널창에 보이는 명령어 내역 모두 지우기
# Ctrl+c를 통애 입력중인 명령어 취소


# 파일 삭제 명령어, -f 옵션을 통해 묻지 않고 삭제.
rm 파일명

# 폴더 째 삭제
rm -r 파일명 (rm -rf쓰지말 것)

# 터미널창에 입력한 문자열을 출력
echo "hello world"

# echo를 통해 파일에 내용 입력 가능
# > : 덮어쓰기, >> : 추가모드
echo "hillo world" > second_file.txt


# 복사 명령어(폴더 봇사시에는 -r 옵션)
#cp 복사대상 복사될 파일명
cp first_file.txt first_file_copy.txt 

# 파일이동명령어
mv 이동대상파일 경로/이동될 파일명
# 현재폴더에서 파일명 변경
ex. mv second_file.txt ./third_file.txt
.=현재 폴더
../third_file.txt=상위 폴더로 이동하며 이름 바꾸기
#상위폴더로 파일이동명령어
 mv second_file.txt ../

 
# grep : 파일 내에서 문자열 찾기
# r:디렉토리내 n:라인수 출력 i:대소문자 구분없이 (rni 많이 쓴다 legacy에서)
grep -rni "hello" . 

# find: 이름으로 파일"을" 또는 디렉토리 찾기 (파일 자체를 찾는 것)
find . -name "*.txt" or "hello*"
*뒤에 txt로 끝나는 것을 찾고 싶다는 뜻
find . -type f 파일만 찾겠다는 뜻


# find와 grep의 혼용
find . -name "*.txt"| xargs grep -rni "hello" 
# | xargs =왼쪽 실행문 결과값을 오른쪽 실행문에 입력값으로 전달
 // ==find . -name "*.txt" -exec grep -rni "hello" {} \; (중괄호에 앞값이 들어감)
 # -exer자리에

#타입은 file인 파일중에 이름이 first로 시작하는 파일을 찾아, 
그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾아라
find . -type f -name "first" | xargs grep -rni "hello"


리눅스는 동시접속을 기반으로 한다(권한관리할 일이 많다)
1.리눅스에는 root와 그외계정으로서 구성
2.리눅스에는 root 계정의 권한이 필요한 경우가 있다.
3-1. root계정의 권한을 빌리기만, 3-2.root계정으로 전환
4-1. 권한을 빌리러만 4-2개 root 계정으로 전환  개인 계정의 비밀번호
새로운계정 생성 -> root계정의 권한 필요
/ 주뇨,//

1. sudo: root 권한 빌리는 것 - 내계정의 비번이 사용됌(모든 작업을 할 수 있는 것은 아니다)
2. root 계정으로 전환 - 비번을 알아야됌

1. 계정생성 sudo useradd newuser1
2. 내비밀번호
3. sudo passwd newuser1 -> 새로운 계정의 비밀번호
1)권한을 빌릴때 내 계정의 비밀번호
2)root계정으로 전환 root 계정의 비밀번호: su -
whoami: 현재 작업자 누구인가
su - 바꾸고자하는 계정 <-바꾸고자 하는 계정의 비밀번호

폴더 소유자, 소유자그룹,그 외

#파일권한
파일 -> 소유자, 그룹, 그외
파일 -> -rwxrwxrwx 세가지 파트로 나눠져있다
권한 X= --
EX.rwxrw-r--
r=읽기,w=쓰기, x=실행
=>그외는 읽기밖에 안된다
r(4)w(2)x(1)rw-r--
chmod 764 test.txt

소유자, 소유그룹, 그 외 모두 다 읽기만 가능하도록 권한 수정.




왜 내가 우테코 연결을 날려먹었는지 정확히 배운 날이었다.. -f가 얼마나 무서운 것인지 알았다...
멋모르고 남발했던 것이 패착이었다...