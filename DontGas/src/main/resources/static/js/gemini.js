   	import { GoogleGenerativeAI } from "@google/generative-ai";
	
	export async function makeReport(displayedData){
   	const API_KEY = "AIzaSyDZmX5MrJQ6RxGdqJa8CxrhbDB3PBmIZvw";

   	const genAI = new GoogleGenerativeAI(API_KEY);
   	const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash"});
	

   	async () => {
   	$('#Answer').text('10초 정도 소요됩니다! 잠시만 기다려주세요!');
	var prompt = "현재 페이지의 데이터는 다음과 같습니다: " + `${JSON.stringify(displayedData)}` + ". 이 데이터를 바탕으로 적절한 조언을 제공해주세요.";

                   
   	const result = await model.generateContent(prompt);
 	const response = await result.response;
 	const text = response.text();

	$('#Answer').text(text);

    };
}