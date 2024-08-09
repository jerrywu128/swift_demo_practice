//
//  chooseColorVC.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/5/6.
//

import UIKit

class chooseColorVC: UIViewController {
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var certificationImg: UIImageView!
    var userName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        msgLabel.text = "Hi, \(userName!)\n Choose your favorite color"
        let dismissBtn = UIButton()
        dismissBtn.frame =  CGRect(x: self.view.frame.size.width / 2 - 100, y: self.view.frame.size.height / 2 + 45, width: 200, height: 50)
        dismissBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        dismissBtn.setTitle("exit", for: .normal)
        dismissBtn.setTitleColor(.white, for: .normal)
        dismissBtn.backgroundColor = UIColor.darkGray
        dismissBtn.layer.cornerRadius = 10
        self.view.addSubview(dismissBtn)
        dismissBtn.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        
    }
    
    @IBAction func changeColor(sender: UIButton){
        switch sender.tag{
        case 0:
            certificationImg.tintColor = UIColor.red
        case 1:
            certificationImg.tintColor = UIColor.green
        case 2:
            certificationImg.tintColor = UIColor.blue
        default:
            break
        }
    }
    
    @objc func dismissView(){
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
