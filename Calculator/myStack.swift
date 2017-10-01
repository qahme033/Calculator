//
//  myStack.swift
//  Calculator
//
//  Created by Qasim Ahmed on 2017-09-29.
//  Copyright © 2017 Qasim Ahmed. All rights reserved.
//

import UIKit

class MyStack: NSObject {

    var stack : [String] = [];
    func pop()->String{
        return stack.removeFirst();
    }
    
    func push(_ item : String){
        stack.insert(item, at: 0);
    }
    
    func isValidEquation(){
        stack.contains("\\[+-=x]\\");
    }
}
