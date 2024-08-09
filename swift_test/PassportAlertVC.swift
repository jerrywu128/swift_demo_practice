//
//  PassportAlertVC.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/5/31.
//

import UIKit

class PassportAlertVC: UIView {
 
    @IBOutlet weak var bottomView:UIView!
    @IBOutlet weak var checkBtn: UIButton!
    
    @IBOutlet weak var passPortID: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    weak var delegate: PassportAlertDelegate?
    
    class func instantiateFromNib() -> PassportAlertVC{
        
        guard let view = UINib(nibName: "\(PassportAlertVC.self)", bundle: nil).instantiate(withOwner: nil,
        options: nil)[0] as? PassportAlertVC else{
            assertionFailure("Failed to instantiate")
            return PassportAlertVC()
        }
    
        return view
    }
    func setInfo(passportID: String?,name: String?,country: String?){
        self.passPortID.text = passportID
        self.nameLabel.text = name
        self.countryLabel.text = country
    }
    
    @IBAction func chlickBtn(_ sender: UIButton){
        defer{ removeFromSuperview()}
        delegate?.buttonAction()
    }


}
