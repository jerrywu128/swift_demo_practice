//
//  TravelAgentsVC.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/5/31.
//

import UIKit

class TravelAgentsVC: UIViewController, CustomerDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var countryBtn: UIButton!
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var bottomView: UIView!
    var customer: Customer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottomView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        bottomView.layer.cornerRadius = 50
        name.layer.borderWidth = 1
        name.layer.borderColor = UIColor.black.cgColor
        name.layer.cornerRadius = 5
        name.attributedPlaceholder = NSAttributedString(string: name.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        age.layer.borderWidth = 1
        age.layer.borderColor = UIColor.black.cgColor
        age.layer.cornerRadius = 5
        age.attributedPlaceholder = NSAttributedString(string: age.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startApply(_ sender: Any) {
        guard let text = name.text, !text.isEmpty else{
            let alertController = UIAlertController(title: "Empty!", message: "Please input your name", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
        guard let text = age.text, !text.isEmpty else{
            let alertController = UIAlertController(title: "Empty!", message: "Please input your age", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
        
        guard let text = age.text, (Int(text) ?? 10 < 123) else{
            let alertController = UIAlertController(title: "Empty!", message: "Please input correct age", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
     
        customer = Customer(name: name.text!, age: Int(age.text!) ?? 0 , country: countryBtn.titleLabel!.text!)
        customer?.delegate = self
        customer?.provideData()
        
      
        
        
    }
    
    
    func applyPassport(_ sender: Customer) {
        customer?.passportID = UUID().uuidString
        
        let alertController = UIAlertController(title: "Passport", message: "Passport ID: \(customer!.passportID!)\nName: \(customer!.name!)\nCountry: \(customer!.country!)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        alertController.view.tintColor = UIColor.black
       
        alertController.view.subviews.first?.subviews.first?.subviews.first?.layer.borderColor = UIColor.black.cgColor
        alertController.view.subviews.first?.subviews.first?.subviews.first?.layer.borderWidth = 1
        
       
        
        self.present(alertController, animated: true, completion: nil)
        
        /*
        let alert = PassportAlertVC.instantiateFromNib()
        alert.delegate = self
        alert.center = view.center
        alert.setInfo(passportID: customer?.passportID, name: name.text, country: countryBtn.titleLabel!.text!)
        
        view.addSubview(backgroundView)
        view.addSubview(alert)*/
        print("Hi \(customer!.name!), This is your passportID:\n\(customer!.passportID!)")
        
    }
    
    @IBAction func countryMenuAction(_ sender: Any) {
        print(countryBtn.titleLabel!.text!)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
           view.endEditing(true)
       }

    private lazy var backgroundView: UIView = {
            let view = UIView(frame: view.bounds)
            view.backgroundColor = .black
            view.alpha = 0.7
            return view
    }()


}


extension TravelAgentsVC: PassportAlertDelegate{
    func buttonAction() {
        UIView.animate(withDuration: 0.25, animations: {self.backgroundView.alpha = 0.7})
        {
            _ in self.backgroundView.removeFromSuperview()
        }
    }
}
