//
//  ViewController.swift
//  DatePicker
//
//  Created by 이준협 on 2022/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker.addTarget(self, action: #selector(pick), for: .valueChanged)
        
    }
    
    @objc func pick() {
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .none
        dateformatter.timeStyle = .short
        //dateformatter 는 어떤 형식으로 보여줄껀지 설정!
        
        let date = dateformatter.string(from: datePicker.date)
        label.text = date
        
        
    }
    
    

}

