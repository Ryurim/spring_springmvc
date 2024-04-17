어노테이션
1. 스프링에서 가장 많이 사용
2. 특정 경로의 요청 (request) 을 하기 위해 사용
3. 컨트롤러 클래스 선언부에 사용 또는 메서드에 사용
	- 클래스 선언부에 사용 시 경로가 이어지고 이어짐

4. 서블릿 중심 MVC 서비스에서는 Servlet을 상속받아서 -> doGet, doPost 오버라이드 해서 사용
5. 스프링 MVC 에서는 하나의 컨트롤러에 여러개의 메서드(경로)를 호출해서 모두 처리 가능 (컨트롤러 갯수 줄어듦)
6. method 속성
	- GET/POST 처리 방식
	- @RequsetMapping(value="경로") -> GET/POST 둘 다 응답
	- @RequestMapping(value="경로", method=Reqeust.GET)
	- @RequestMapping(value="경로", method=Reqeust.POST)
	- @RequestMapping(value="경로", method={Reqeust.GET, Requset.POST})
	- @GetMapping("경로") -> GET
	- @PostMapping("경로") -> POST --> 스프링4 이후에 추가된 것
