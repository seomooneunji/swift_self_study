//
//  ViewController.swift
//  Memo_TableView
//
//  Created by eunji on 2018. 7. 25..
//  Copyright © 2018년 eunji. All rights reserved.
//

import UIKit

var Data = [String]()
// 여기다가 써도되나? Main안에 써야하나? - 되는거같음
// 여기에 선언하면 Memo.swift에서 가져다 쓸수있나? - 가져다 쓸수있음!

class Main: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /* 테이블뷰 사용에 필요한 3가지
     1. 몇개의 테이블뷰 셀을 가질것인지
     2. 각각의 셀을 어떻게 꾸며줄것인지
     3. 셀을 선택하면 어떠한 행동을 하게 할것인지
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // MainCell이라는 것은 항상 swift파일로 존재하기때문에, 값이 있는 경우이므로 !를 붙여줌
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainCell
        
        Cell.TitleLabel.text = Data[indexPath.row]
        
        return Cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 이렇게 해도 되고, storyboard에서 바로 세그웨이를 이용해 화면전환해도 됨.
        // 하지만, 순서를 user defaluts에 저장한 후에, 화면 전환을 해야하므로, 아래 함수를 사용해줘야함.
        // performSegue(withIdentifier: "ToMemo", sender: self)
        
        UserDefaults.standard.set(indexPath.row, forKey: "Order")
        
        performSegue(withIdentifier: "ToMemo", sender: self)
        
        // 이렇게 하면 에러나는 이유를 파악했음. -> 화면 전환을 하기전에 index.row값을 저장을 해줘야 하는데..
        // 화면 전환을 하고나서 UserDefaults에 저장하고 memo.swift파일는 이미 실행된 상태니까
        // memo.swift파일의 userdefalut에 !로 선언되어있는데, nil이 들어가기때문에 옵셔널 에러가 남.
    }
    
    // 추가로 테이블 뷰에 관련된 func - 삭제 하는 기능.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            Data.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func Add(_ sender: Any) {
        UserDefaults.standard.set(-1, forKey: "Order")
        // 얘도 화면전환 전에 저장해줘야하는거아님? 순서가 랜덤한가?
    }
 
    
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
     */


}

