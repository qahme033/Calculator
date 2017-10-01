//
//  ViewController.swift
//  Calculator
//
//  Created by Qasim Ahmed on 2017-09-29.
//  Copyright © 2017 Qasim Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //var stack = MyStack();
    var equation = ["firstNumber": "0", "secondNumber" : "", "operand" : ""];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var screen: UILabel!

    func calculate(){
        switch equation["operand"]! {
        case "-":
            equation["firstNumber"] = String(Int(equation["firstNumber"]!)! - Int(equation["secondNumber"]!)!);
          //  equation["secondNumber"] = "";
        case "+":
            equation["firstNumber"] = String(Int(equation["firstNumber"]!)! + Int(equation["secondNumber"]!)!);
         //   equation["secondNumber"] = "";
        case "x":
            equation["firstNumber"] = String(Int(equation["firstNumber"]!)! * Int(equation["secondNumber"]!)!);
            //equation["secondNumber"] = "";
        case "/":
            equation["firstNumber"] = String(Int(equation["firstNumber"]!)! / Int(equation["secondNumber"]!)!);
          //  equation["secondNumber"] = "";
        default:
            print(equation);
        }
        screen.text = equation["firstNumber"];
        
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let input = sender.title(for: .normal)!  ;
 
//        print(input);
//        print(type(of: equation["operand"]!))
//     //   Int(input!) ? numberPressed(input!) : operatorPressed(input!);
        switch input {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" :
            screen.text = input;
            if(equation["operand"] != ""){
                equation["secondNumber"] = equation["secondNumber"]! + input;
            }
            else{
                equation["firstNumber"] = equation["firstNumber"]! + input;
            }
        case "-", "+", "x", "/":
            equation["operand"] = input;
        case "=":
            calculate();
        case "C":
            screen.text = "0";
            clearButton.setTitle("AC", for: .normal);
        default:
            screen.text = "0";
            equation["firstNumber"] = "0";
            equation["secondNumber"] = "";
            equation["operand"] =  "";
        }
        print(equation);

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

