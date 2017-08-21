# AreaPicker
省市区选择器

1.导入AreaPickerViewController.swift 

2.导入areas.plist文件

3.需要的地方

let rect = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 300)

let areaVC = AreaPickerViewController(title: "哈哈", frame: rect) { (pro,area,city) in

    //省市区选择回调
    
    print(pro,area,city)
    
    //此处如用到self属性，则需弱引用
    
    /*
    
    let areaVC = AreaPickerViewController(title: "哈哈", frame: rect) { [weak self](pro,area,city) in
    
    self?.xxx = pro
    
    }
    
    */
 
}

areaVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)

self.present(areaVC, animated: false, completion: nil)
