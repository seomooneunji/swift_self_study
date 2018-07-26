//
//  Memo.swift
//  Memo_TableView
//
//  Created by eunji on 2018. 7. 25..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit


class Memo: UIViewController {
    
    @IBOutlet weak var ContentTextView: UITextView!
    
    let Order = UserDefaults.standard.object(forKey: "Order") as! Int
    
    override var prefersStatusBarHidden: Bool {return true}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if Order == -1 {
            ContentTextView.text = "..."
        } else {
            ContentTextView.text = Data[Order]
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func Back(_ sender: Any) {
        
        if Order == -1 {
            Data.insert(ContentTextView.text, at: 0)
        } else {
            Data.remove(at: Order)
            Data.insert(ContentTextView.text, at: 0)
        }
    }
    // 누르기만 해도 수정된걸로 되는데.. 어카지이이이이
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
