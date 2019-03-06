//
//  ViewController.swift
//  demo2class-2
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblresult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func next(_ sender: UIButton) {
        let sb=UIStoryboard(name: "Main", bundle: nil)
        let lionvc=sb.instantiateViewController(withIdentifier: "2") as! LineViewController
        
        self.present(lionvc,animated: true)
    }
    
    @IBAction func sw1(_ sender: UISwitch) {
        var count:Bool=false
        if sender.isOn
         {
            lblresult.text="on"
            let alert=UIAlertController(title: "You ON The Switch", message: "Do u Want to Make It ON", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "YES", style: .default, handler: {
                ACTION in
                sender.setOn(true, animated: true)
                
            }))
            alert.addAction(UIAlertAction(title: "NO", style: .destructive, handler: {
                ACTION in
                sender.setOn(false, animated: true)
            }))
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {
                ACTION in
                sender.setOn(false, animated: true)
            }))
            self.present(alert,animated: true)
        }
        else
         {
            lblresult.text="off"
        }
    }
}

