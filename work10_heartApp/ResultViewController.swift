//
//  ResultViewController.swift
//  work10_heartApp
//
//  Created by 彭有駿 on 2022/4/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    //Label會根據你案的按鈕呈現
    var chooses = [String]()
    
    var answer = 0
    
    init?(coder:NSCoder,chooses: [String]){
        self.chooses = chooses
        super.init(coder: coder)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var Q1Label: UILabel!
    
    
    @IBOutlet weak var Q2Label: UILabel!
    
    
    @IBOutlet weak var Q3Label: UILabel!
    
    
    @IBOutlet weak var Q4Label: UILabel!
    
    
    @IBOutlet weak var Ans1Label: UILabel!
    
    @IBOutlet weak var Ans2Label: UILabel!
    
    @IBOutlet weak var Ans3Label: UILabel!
    
    @IBOutlet weak var Ans4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Label會根據你案的按鈕呈現
        Q1Label.text = chooses[0]
        Q2Label.text = chooses[1]
        Q3Label.text = chooses[2]
        Q4Label.text = chooses[3]
         //顯示每個按鈕獨立的答案
        showAns1()
        showAns2()
        showAns3()
        showAns4()

    }
    

    
    @IBAction func rest(_ sender: Any) {
    }
    
    
    //顯示每個按鈕的答案
    func showAns1(){
        if Q1Label.text == options[0].opt{
            answer = 0
            Ans1Label.text = options[answer].ans
        }else if Q1Label.text == options[1].opt{
            answer += 1
            Ans1Label.text = options[answer].ans
        }else if Q1Label.text == options[2].opt{
            answer += 2
            Ans1Label.text = options[answer].ans
        }else {
            answer += 3
            Ans1Label.text = options[answer].ans
        }
    }
    
    func showAns2(){
        if Q2Label.text == options2[0].opt2{
            answer = 0
            Ans2Label.text = options2[answer].ans2
        }else if Q2Label.text == options2[1].opt2{
            answer = 1
            Ans2Label.text = options2[answer].ans2
        }else if Q2Label.text == options2[2].opt2{
            answer = 2
            Ans2Label.text = options2[answer].ans2
        }else {
            answer = 3
            Ans2Label.text = options2[answer].ans2
        }
        
    }
    
    func showAns3(){
        if Q3Label.text == options3[0].opt3{
            answer = 0
            Ans3Label.text = options3[answer].ans3
        }else if Q3Label.text == options3[1].opt3{
            answer = 1
            Ans3Label.text = options3[answer].ans3
        }else if Q3Label.text == options3[2].opt3{
            answer = 2
            Ans3Label.text = options3[answer].ans3
        }else {
            answer = 3
            Ans3Label.text = options3[answer].ans3
        }
        
    }
    
    func showAns4(){
        if Q4Label.text == options4[0].opt4{
            answer = 0
            Ans4Label.text = options4[answer].ans4
        }else if Q4Label.text == options4[1].opt4{
            answer = 1
            Ans4Label.text = options4[answer].ans4
        }else if Q4Label.text == options4[2].opt4{
            answer = 2
            Ans4Label.text = options4[answer].ans4
        }else {
            answer = 3
            Ans4Label.text = options4[answer].ans4
        }
        
    }
    

    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
