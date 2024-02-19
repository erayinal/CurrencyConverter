//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Eray İnal on 13.02.2024.
//

//1 API nedir? Açılımı 'Application Programming Interface'. API ile bir sunucudan herhangi bir programa herhangi bir mobil uygulamaya veri aktarımı yapabiliyoruz

//.1 JSON nedir? Açılımı 'JavaScript Object Notation'. Bu bir veri alışverişi yapma formatıdır(Karmaşık verileri yapısal bir şekilde göstermeye yarayan bir gösterim formatı), biz API ile verileri alırken JSON formatında alırız ve kullanırız. Json HashMap'ler gibi Key-Value değerler içerir

//2 Şimdi öncelikle google'a 'Currency Conversion API' yazarak 'https://fixer.io' bu siteye gidelim. API'da üç tane önemli şey var: birincisi istek yollamak ikincisi cevap almak üçüncüsü ise aldığımız cevabı işlemek

//..2 Herhangi bir JSON Beautifier sitesine giderek daha düzgün bir şekilde(Atl alta) görebilirsin


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var chfLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesButton(_ sender: Any) {
        
        //3 Önce Label'ları ekledik sonrasında Buton'u ekledik. Biz daha öncesinden API'da olayların 3 adımda gerçeleştiğini belirtmiştik:
        //𝟙) Request & Session: İstek ile siteye gitmek
        //𝟚) Response & Data: Veriyi almak
        //𝟛) Parsing & JSON Serialization: Datayı işlemek
        
        //.3 Bu adımları sirasıyla gerçeleştirelim: Önce siteye gitmek için url belirleyelim ve ardından session açalım:
        let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/CurrencyData/main/currency.json")
        let session = URLSession.shared
        
        //..3 Closure:
        let task = session.dataTask(with: url!) { data, response, error in
            if(error != nil){ //...3 Eğer hata varsa bir alert verelim
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil) //....3 Alert'e bir OK button'u ekleyelim
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
                
                //.....3 Böylece birinci adımı yapmış olduk yani siteye gitmeyi başardık. Şimdi 'else' içerisinde ikinci adıma geçelim:
            }
            else{
                //4 
                if(data != nil){
                    
                }
                
            }
            
            
        }
        
    }
    
}

