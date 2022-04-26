//
//  ViewController.swift
//  work10_heartApp
//
//  Created by 彭有駿 on 2022/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    //儲存選項
    var chooses = [String]()
    
    //儲存標題
    var questionsIndx = 0
    
    //儲存問題
    var topicIndx = 0
    

    
    
    
//        didSet{
//            questionLabel.text = "\(questionsIndx+1)"
//            topicLabel.text = questions[questionsIndx]
//        }
//    }
    
    //題目編號
    @IBOutlet weak var questionLabel: UILabel!
    
    //題目內容
    @IBOutlet weak var topicLabel: UILabel!
    
    //選擇按鈕array
    @IBOutlet var choiceBtn: [UIButton]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        changeBtn()
        
        choiceBtn[0].layer.cornerRadius = 30
        choiceBtn[1].layer.cornerRadius = 30
        choiceBtn[2].layer.cornerRadius = 30
        choiceBtn[3].layer.cornerRadius = 30
        

        
        choiceBtn[0].clipsToBounds = true
        choiceBtn[1].clipsToBounds = true
        choiceBtn[2].clipsToBounds = true
        choiceBtn[3].clipsToBounds = true
  }
    
    
    
    //選擇按鈕的答案
    @IBAction func answer(_ sender: UIButton) {
        //選擇的按鈕會跟著到ResultController的Label
        let selectAnswer = sender.configuration?.title ?? ""
        chooses.append(selectAnswer)
        
        //判斷題目做完後跳轉
        if questionsIndx == (questions.count-1){
        performSegue(withIdentifier: "showResult", sender: nil)
        }else{
            //題目編號點一次加1
            questionsIndx += 1
            //題目問題
            topicIndx += 1
            questionLabel.text = "\(questionsIndx+1)"
            //從Questions的File抓取
            topicLabel.text = "\(questions[topicIndx])"
            //每次點完一題會切換按鈕
            changeBtn()
            
        }
        
        
    }
    //每題的按鈕從File裡的Option抓取，用label作為判斷
    func changeBtn(){
        if questionLabel.text == "1"{
            choiceBtn[0].setTitle(options[0].opt, for: .normal)
            choiceBtn[1].setTitle(options[1].opt, for: .normal)
            choiceBtn[2].setTitle(options[2].opt, for: .normal)
            choiceBtn[3].setTitle(options[3].opt, for: .normal)
        }else if questionLabel.text == "2"{
            choiceBtn[0].setTitle(options2[0].opt2, for: .normal)
            choiceBtn[1].setTitle(options2[1].opt2, for: .normal)
            choiceBtn[2].setTitle(options2[2].opt2, for: .normal)
            choiceBtn[3].setTitle(options2[3].opt2, for: .normal)
        }else if questionLabel.text == "3"{
            choiceBtn[0].setTitle(options3[0].opt3, for: .normal)
            choiceBtn[1].setTitle(options3[1].opt3, for: .normal)
            choiceBtn[2].setTitle(options3[2].opt3, for: .normal)
            choiceBtn[3].setTitle(options3[3].opt3, for: .normal)
        }else{
            choiceBtn[0].setTitle(options4[0].opt4, for: .normal)
            choiceBtn[1].setTitle(options4[1].opt4, for: .normal)
            choiceBtn[2].setTitle(options4[2].opt4, for: .normal)
            choiceBtn[3].setTitle(options4[3].opt4, for: .normal)
            
        }
    }
    
    
    
    
    
    
    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?) -> ResultViewController? {
        return ResultViewController(coder: coder, chooses: chooses)
    }
    
    


}

