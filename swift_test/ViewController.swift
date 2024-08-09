//
//  ViewController.swift
//  swift_test
//
//  Created by 吳旻洋 on 2024/4/26.
//

import UIKit
// MARK: page22
import CryptoKit



class ViewController: UIViewController {

    
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var hiTextField: UITextField!
    @IBOutlet weak var nextBtn: UIButton!
    var userName: String?
// MARK: page32
    enum Transportation{
        case car, bike, ship, plane, train
    }
// MARK: page37
    enum errorInt: Error{
        case isEmpty,
         isNotInt,
         isNegative
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      

// MARK: page15
        // let var
        /*
         var fruit = "An apple"
         let money = 25.9999
         print(fruit + " is $" + String(money) + ".")
         
         fruit = "A banana"
         let howMuch =  fruit + " is $" + String(money-3.6) + "."
         print(howMuch)
         */
        

// MARK: page16
        //type annotation
        /*
         let subject: String = "CS"
         var language: String = "Swift"
         var learningDays: Int = 30
         var cost: Double = 999.32331
         var bonus: Float = 0.999
         var abandon:Bool = false
         print(subject,language,learningDays,cost,bonus,abandon)
         */
        
       
// MARK: page17&18
        //numeric literals
        /*
         let decimalInteger = 18
         let binaryInteger = 0b10010       // 18 in binary notation
         let octalInteger = 0o22           // 18 in octal notation
         let hexadecimalInteger = 0x12     // 18 in hexadecimal notation
         
         
         let decimalDouble = 12.1875
         let exponentDouble = 1.21875e1
         let hexadecimalDouble = 0xC.3p0
         
         print("這是Int64_max:\(Int64.max)","這是Int64_min:\(Int64.min)",separator: "、",terminator: "。")
         */
        
        
// MARK: page19
        //instance
        /*
         let num:Int = Int(13.99913422343515)
         let message:String = String(repeating: "🃟", count: 99)
         print("This is number:\(num),This is message:\(message)")
         */
// MARK: page20
        //print(showMessage(msg1: "blue", msg2: "red"),"58")
// MARK: page21
        //goToMarketBuySeaFoodMsg(Goto: "Donggang Huaqiao Seafood Market", buy: "fish")
        //print(showMessage("blue", "red"),"72")
        
// MARK: page22
        //print(MD5(string: "hello world!"))
        
// MARK: page23
        /*
         let Ebook = book()
         print(Ebook.bookIntroduceMsg())
         Ebook.Subject = "Chinese"
         Ebook.page = 456
         print(Ebook.bookIntroduceMsg())
         */
        
// MARK: page24&26
        /*
         let Ebook = e_book()
         Ebook.Subject = "Korean"
         let Ebook2 = Ebook
         Ebook2.Subject = "japan"
         Ebook.e_bookIntroduceMsg()
         Ebook2.e_bookIntroduceMsg()
         */
        
// MARK: page25&26
        /*
         var myAccount = account()
         var youAccount = myAccount
         youAccount.account = "bob321"
         myAccount.showAccount()
         youAccount.showAccount()
         */
        
// MARK: page27
        /*
         let A = 30
         let B = 99
         if A > B{
         print("A>B")
         }else if A < B{
         print("A<B")
         }else{
         print("A==B")
         }
         */
        /*
         let weather: [String] = ["sunny","rainy","cloudy"]
         print("Have \(weather.count) Weather, today is \(weather[2]) day.")
         */
// MARK: page29
        /*
         var sum = 0
         for i in 3...10{
         sum = sum + i
         }
         print(sum)
         
         let colors: [String] = ["red","blue","green"]
         for color in colors{
         print(color)
         }
         */
        /*
         var sum = 0
         while sum < 20{
         sum = sum + 6
         
         }
         print(sum)
         */
// MARK: page30
        /*
        for i in stride(from: 1, to: 10, by: 1){
            if(i % 3 == 0){
                //break
                continue
            }
            print("\(i)")
        }
         */
// MARK: page31
        /*
         var day = "Monday"
         switch day{
         case "Monday":
         print("Today is Monday")
         case "Tuesday":
         print("Today is Tuesday")
         
         case "Wednesday":
         print("Today is Wednesday")
         
         case "Thursday":
         print("Today is Thursday")
         
         case "Friday":
         print("Today is Friday")
         
         case "Saturday":
         print("Today is Saturday")
         
         case "Sunday":
         print("Today is Sunday")
         
         default:
         print("Error")
         
         }
         */
        /*
         var cost = 4000
         switch cost{
         case 0..<1001:
         print("0~1000")
         case 1001..<2001:
         print("1001~2000")
         
         case 2001..<3001:
         print("2001~3000")
         
         case 3001..<4001:
         print("3001~4000")
         
         default:
         print("cost>4000")
         
         }
         */
// MARK: page32
        /*
         let commute = Transportation.car
         */
        /*
         var foodDict:[String:Int]=[
         "🍕":299,
         "🍟":20,
         "🍔":80,
         "🦴":0
         ]
         print(foodDict["🍔"]!)
         */
// MARK: page33
        /*
        let person:(name:String,age:Int,score:Int) = (name: "joe",age:8, score:48)
        print("\(person.name) is \(person.age) years old, score:\(person.score)")
         */
        /*
        let person:[(name:String,age:Int,score:Int)] = [(name: "joe",age:8, score:48),
        (name: "windy",age:7, score:85),
        (name: "su",age:9, score:34)
        ]
        for (name,age,score) in person{
            print("\(name) is \(age) years old, score:\(score)")
        }
         */
        
// MARK: page34&35
        /*
         var id:String?
         var balance:Double? = nil
         id = "23rff2"
         if let checkHaveMoney = balance{
         print("\(id!):\(balance!)")
         }else{
         print("You're poor")
         }*/
        /*
         var id:String! = "afwfef2"
         var balance:Double! = 99.4
         print("\(id ?? "errorID"):\(balance ?? 0)")
         */
// MARK: page28
        /*
         var hungry:Bool! = false
         guard hungry else {
         print("I'm not hungry")
         return
         }
         print("I'm hungry")
         print("🍱")
         */
        /*
         var account: String? = nil
         var password: String? = nil
         account = "aaavk"
         password = "12345"
         guard let account,
         let password else{
         print("some info are empty!")
         return
         }
         print("your account is \(account), pwd is \(password)")
         */
// MARK: page37
        /*
        do{
            try isPositiveInt(inputValue: -333)
        }catch{
            print("\(error)")
        }*/
        //try? isPositiveInt(inputValue: "333")
// MARK: page39
        /*
        openInfo.printDayHaveHour()
        print("\(openInfo.dayHaveHour)")
        let timeHour = openInfo()
         
        timeHour.printDayHaveHour2()
        print("\(timeHour.hour)")*/
// MARK: page40
        /*
        let Sport1 = sport()
        Sport1.printInfo()
        let Sport2 = sport(rank: "No.3")
        Sport2.printInfo()
        let Sport3 = sport(item: "high jump competition", rank: "No.2")
        Sport3.printInfo()
         */
// MARK: page36
        //var anyThing:Any?
        /*
        anyThing = 4.2
        print("\(anyThing!)")
        anyThing = "This is any"
        print("\(anyThing!)")
         */
        //anyThing = e_book()
        //(anyThing as! e_book).e_bookIntroduceMsg()
        /*
        anyThing = 999
        print("\(anyThing!)")
        print("\(anyThing!)")
         */
         
        /*
        var anyThing:Any?
        anyThing = 4.2
        print("\(anyThing!)")
        let fvalue = anyThing as! Double
        print("\(fvalue)")*/
        
        
    }
    
    @IBAction func nextPage(sender: UIButton) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier:"chooseColorSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chooseColorSegue" {
            if let chooseColorSegue = segue.destination as? chooseColorVC{
                let temp = sender as? String
                chooseColorSegue.userName = self.userName!
            }
        }
       
    }
    
    @IBAction func showLabel(sender: UIButton) {
        
        guard let text = hiTextField.text, !text.isEmpty else{
            let alertController = UIAlertController(title: "Empty!", message: "Please input your name", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
        self.hiLabel.isHidden = false
        self.hiLabel.text = "Hi," + hiTextField.text!
        self.userName = hiTextField.text!
        self.nextBtn.isHidden = false

    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        let alertController = UIAlertController(title: "This is title.", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
         
    }
    
    // MARK: page25
    struct account{
        var account = "tim1234"
        var password = "abc123"
        func showAccount(){
            print(account)
        }
    }
    
    // MARK: page23
    class book{
        var color: String = "white"
        var page: Int = 123
        var Subject: String = "English"
        func bookIntroduceMsg(){
            print("This book is an \(Subject) book ,\(page)page, \(color) color.")
        }
    }
    
// MARK: page24
    class e_book: book{
        func e_bookIntroduceMsg(){
            print("This book is an \(Subject) e-book ,\(page)page, \(color) color.")
        }
    }
// MARK: page39
    class openInfo{
        static let dayHaveHour = 24
        var hour = 24
        static func printDayHaveHour(){
            print("There are \(dayHaveHour) hours in a day")
        }
        func printDayHaveHour2(){
            print("There are \(hour) hours in a day")
        }
    }
// MARK: page40
    class sport{
        var sportItem:String?
        var rank:String?
        init(){
            self.sportItem = "swimming competition"
            self.rank = "No.1"
        }
        init(rank:String){
            self.sportItem = "swimming competition"
            self.rank = rank
        }
        init(item:String,rank:String){
            self.sportItem = item
            self.rank = rank
        }
        
        func printInfo(){
            print("\(self.sportItem!):\(self.rank!)")
        }
    }
    
// MARK: page21
    func goToMarketBuySeaFoodMsg(Goto market:String,buy seafood:String){
        print("He is going to \(market) to buy some \(seafood)",terminator: ".")
    }
    
// MARK: page20
    func showMessage(msg1: String, msg2: String) -> String{
        let newMsg = "This is a \(msg1) car, that is a \(msg2) hat."
        print(newMsg)
        return newMsg
    }
// MARK: page21
    func showMessage(_ msg1: String,_  msg2: String) -> String{
        let newMsg = "This is a \(msg1) car, that is a \(msg2) hat."
        print(newMsg)
        return newMsg
    }
// MARK: page22
    func MD5(string: String) -> String {
        let digest = Insecure.MD5.hash(data: Data(string.utf8))

        return digest.map {
            String(format: "%02hhx", $0)
        }.joined()
    }
// MARK: page37
    func isPositiveInt(inputValue:Any! ) throws{
        guard let inputValue else{
            throw errorInt.isEmpty
        }
        guard inputValue is Int else{
            throw errorInt.isNotInt
        }
        guard inputValue as! Int > 0 else{
            throw errorInt.isNegative
        }
        print("\(inputValue)")
    }


}

