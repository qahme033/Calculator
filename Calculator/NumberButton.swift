
//

import UIKit

class NumberButton: UIButton {
    var operationType : String = "number";
    
//    init(coder type : UIButtonType,operationType : String){
//        self.operationType = operationType;
//        super.init(frame: bounds);
//
//    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func calculate() {
        print("FOOOO");
        //return "bla";
    }
}

