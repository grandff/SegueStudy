//
//  PerformSegueViewController.swift
//  SegueStudy
//
//  Created by 김정민 on 2020/03/04.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class PerformSegueViewController: UIViewController {

    /*
        Interacting Segue
     1. segue로 이동 시 destination을 통해 값을 전달 할 수 있음
     --> destination을 통해 넘어갈 경우 형변환을 꼭 해줘야함
     2. View에서 View로 segue를 연결한 경우 코드로 구현해야 화면이 넘어감
     --> 이 경우 segue의 identifier를 넘겨줘야함
     3. segue를 통해 화면 전환을 방지할 수 있음
     --> 여기선 switch로 구현함
     */
    
    
    @IBOutlet weak var grantedSwitch: UISwitch!
    
    // segue를 통해 transition이 발생하기 전에 호출됨 (1)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? MessageViewController{
            vc.segueName = segue.identifier!
        }
    }
    
    // 코드를 통해 segue 화면 이동 (2)
    @IBAction func perform(_ sender: Any) {
        performSegue(withIdentifier: "manualSegue", sender: self)
    }
    
    // 스위치에 따른 segue 제어 (3)
    // segue 객체 생성 전에 호출되는 메서드임
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "pushSegue" {
            return grantedSwitch.isOn
        }
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Perform Segue"
    }

}
