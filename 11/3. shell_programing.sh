# 쉘 스크립트는 반드시 .sh 확장자
# 쉘 스크립트는 실행할 때 ./myscript.sh
# 실행을 위해서는 실행권한(x) 필요
#예시
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh
./myscript.sh


(touch file1.txt,file2.txt)
#실습1
#myscript2 쉘스크립트파일 생성
#터미널창에 scripat start 라는 문구 출력  (echo"script start")
echo "script start"
#홈디렉토리에서 mydir이라는 폴더 생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt,file2.txt 파일 생성
cd mydir
touch file1.txt file2.txt
#file1.txt에는 hello from file1이라는 문구 입력
echo "hello from file1" > file1.txt
#file2.txt에는 hello from file2이라는 문구 입력
echo "hello from file2" > file2.txt
#터미널창에 script end라는 문구 출력
echo "script end"

# 실습 2
# my script3 생성
# script2 start 터미널 창에 출력
echo " scrip3 strat"
#홈 디렉토리와 mkdir로 이동(절대경로 이동)//
cd /home/surim/mydir
#file.txt파일의 백업본 생성. 이름은 file1+baekup.txt
cp file1.txt file1_backup.txt 
#file2.txt파일의 이름을 file3_rename.txt로 변경
mv file2.txt file3_rename.txt
#script end터미널에 출력
echo "script3 end"


#if문 (문법이 타이트 하낟 스페이스라나로 다 틀린다) (if가 참이면 위에꺼 else면 아래꺼)
if[ 1-gt 2 ]; then
    echo "hello worldd1"
else
    echo "hello world2"
fi

#변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt 
if [ -f "$file_name" ] then               //(이런 파일이 있는지 검사, "$파일명")
    echo "$file_namefile file exists"   
else
    echo "$file_name file does not ecist"
fi

#for문
for a in {1..100}
do
    echo "hello world $a"
done

#for문과 파일/디렉토리 목록조회
for a in * (a=파일, *=전체 디렉토리)
do
    echo "$a"
done

#for문을 통해 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo" count calue is $count"


리눅스 패키지 중요!!

네트워크 관련 자료 중요!!