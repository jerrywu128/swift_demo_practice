//
//  Customer.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/5/29.
//

import UIKit

class Customer{
    var name: String?
    var age: Int?
    var country: String?
    var passportID: String?
    
    var delegate:CustomerDelegate?
    
    init(name:String,age:Int,country:String){
        self.name = name
        self.age = age
        self.country = country
        
    }
    
    func provideData(){
        
        print("This is my personal info -> \nage: \(self.age!),\nname: \(self.name!),\nCountry: \(self.country!)")
        delegate?.applyPassport(self)
    }

}
