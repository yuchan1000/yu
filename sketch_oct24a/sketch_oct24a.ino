int cnt1 = 0; //카운트 초기화
void setup() {
  Serial.begin(9600); //시리얼 넘버 초기화
}
 
// 1초마다 PC로 숫자를 보내는 예제
void loop() {
  char buf[255]; //buf 배열
  sprintf(buf, "%d", cnt1); // buf와 cnt 출력
  // "%d" 를 "%c" 로 바꾸면 어떻게 될까요?

  Serial.println(buf); //시리얼의 buf출력
  cnt1++; //카운트++

  delay(1000); //1초 후
}
