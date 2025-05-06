import SwiftUI

struct Quiz {
    let question : String
    let choices : [String]
    let answer : String
}

struct ContentView: View {
    @State var currentQuiz : Quiz? = nil
    @State var resultText : String = ""
    let quizList : [Quiz] = [
        Quiz(question: "蘇我馬子が暗殺した天皇のは?", choices: ["崇峻天皇","用明天皇","敏達天皇"], answer: "崇峻天皇"),
        Quiz(question: "蘇我馬子の父は?", choices: ["稲目","蝦夷","入鹿"], answer: "稲目"),
        Quiz(question: "日本の首都は?", choices: ["東京","大阪","名古屋"], answer: "東京"),
    ]
    var body: some View {

        if let quiz = currentQuiz {
            VStack{
                Text(quiz.question)
                    .padding()
                HStack{
                    ForEach(quiz.choices, id: \.self){ choice in
                        Button(action:{
                            if(quiz.answer == choice){
                                resultText = "正解"
                            }else{
                                resultText = "不正解"
                            }
                        }){
                            Text(choice)
                        }
                    }
                }
            }
            Text(resultText)
                .padding()
            if resultText == "正解" {
                Button(action:{
                    currentQuiz = quizList.randomElement()
                    resultText = ""
                }){
                    Text("次の問題")
                }
            }
        }else{
            Button(action:{
                currentQuiz = quizList.randomElement()
            }){
                Text("クイズアプリへようこそ")
            }
        }
    }
}

#Preview {
    ContentView()
}
