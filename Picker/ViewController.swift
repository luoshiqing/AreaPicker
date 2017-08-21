//
//  ViewController.swift
//  Picker
//
//  Created by lsq on 2017/7/31.
//  Copyright © 2017年 罗石清. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnAct(_ sender: Any) {
        
        let rect = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 300)
        let areaVC = AreaPickerViewController(title: "哈哈", frame: rect) { (pro,area,city) in
            //省市区选择回调
            print(pro,area,city)
        }
        areaVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.present(areaVC, animated: false, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

