//
//  ViewController.swift
//  Tahmin Et
//
//  Created by Xcode on 4.07.2019.
//  Copyright © 2019 Xcode. All rights reserved.
//

import UIKit
var Numbers = true
var sayi1 = ""
var sayi2 = ""
var sayi3 = ""
var sayi4 = ""
var sayi5 = ""
var sayi6 = ""
var sayi7 = ""
var sayi8 = ""
var articount = 0
var eksicount = 0
var sonuc = [String]()

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sonuc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sonuc[indexPath.row]
        return cell
        
    
    }

    @IBOutlet weak var gelenSayi1: UITextField!
    @IBOutlet weak var gelenSayi2: UITextField!
    @IBOutlet weak var gelenSayi3: UITextField!
    @IBOutlet weak var gelenSayi4: UITextField!
    
    @IBOutlet weak var table: UITableView!
    
    
    
    
    
    
    
    func random() -> Int {
        let RandomNumber = Int.random(in: 0...9)
        return RandomNumber
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.dataSource = self
        table.delegate = self
        sonuc.removeAll(keepingCapacity: false)
        
        sayi1 = String(random())
        sayi2 = String(random())
        sayi3 = String(random())
        sayi4 = String(random())
       
     /*
        Number4.text = String(sayi4)
        Number3.text = String(sayi3)
        Number2.text = String(sayi2)
        Number1.text = String(sayi1)
       
       */
        
        while Numbers == true {
            
            
            if sayi1 == sayi2 {
                sayi1 = String(random())
               
            }
            else if  sayi1 == sayi3 {
                sayi1 = String(random())
               
                
            }
            else if  sayi1 == sayi4 {
                
                sayi1 = String(random())
                
            }
            else if sayi1 == "0" {
                sayi1 = String(random())
                
            }
            else if  sayi2 == sayi3 {
                
                sayi2 = String(random())
                
            }
            else if  sayi2 == sayi4 {
                
                sayi2 = String(random())
                
            }
            else if  sayi3 == sayi4 {
                
                sayi3 = String(random())
                
            }
                
            else  {
                Numbers = false
                print("\(sayi1)\(sayi2)\(sayi3)\(sayi4)")
            }
        
        
        /*
        
        while Numbers == true {
        

        if String(Number1.text!) == String(Number2.text!) {
            sayi1 = String(random())
            Number1.text = String(sayi1)
        }
        else if  String(Number1.text!) == String(Number3.text!) {
           sayi1 = String(random())
            Number1.text = String(sayi1)
            
        }
        else if  String(Number1.text!) == String(Number4.text!) {
            
            sayi1 = String(random())
            Number1.text = String(sayi1)
        }
        else if String(Number1.text!) == "0" {
            sayi1 = String(random())
            Number1.text = String(sayi1)
        }
        else if  String(Number2.text!) == String(Number3.text!) {
            
            sayi2 = String(random())
            Number2.text = String(sayi2)
        }
        else if  String(Number2.text!) == String(Number4.text!) {
            
            sayi2 = String(random())
            Number2.text = String(sayi2)
        }
        else if  String(Number3.text!) == String(Number4.text!) {
            
            sayi3 = String(random())
            Number3.text = String(sayi3)
        }

        else  {
            Numbers = false
            }
            
            */
    
        }

        
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        sayi5 = String(gelenSayi1.text!)
        sayi6 = String(gelenSayi2.text!)
        sayi7 = String(gelenSayi3.text!)
        sayi8 = String(gelenSayi4.text!)
      
        
        if String(gelenSayi1.text!) == String(gelenSayi2.text!)  {
            
          let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
            

        }
        
        else if String(gelenSayi1.text!) == String(gelenSayi3.text!) {
            
            let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if String(gelenSayi1.text!) == String(gelenSayi4.text!) {
            
            let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if String(gelenSayi2.text!) == String(gelenSayi3.text!) {
            
            let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if String(gelenSayi2.text!) == String(gelenSayi4.text!) {
            
            let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
        }
        
        else if String(gelenSayi3.text!) == String(gelenSayi4.text!) {
            
            let alert = UIAlertController(title: "Hata", message: "aynı rakamlar olmasın", preferredStyle: UIAlertController.Style.alert)
            let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okbutton)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
        
        
        
        
        if sayi5 == sayi1 {
        
            articount = articount + 1
            
        } else if sayi5 == sayi2 {
            
            eksicount = eksicount + 1
            
        }  else if sayi5 == sayi3 {
            
            eksicount = eksicount + 1
            
        }  else if sayi5 == sayi4 {
            
            eksicount = eksicount + 1
            
        }
        if sayi6 == sayi1 {
            
            eksicount = eksicount + 1
            
        }  else if sayi6 == sayi2 {
            
            articount = articount + 1
            
        }  else if sayi6 == sayi3 {
            
            eksicount = eksicount + 1
            
        }  else if sayi6 == sayi4 {
            
            eksicount = eksicount + 1
            
        }
        if sayi7 == sayi1 {
            
            eksicount = eksicount + 1
            
        }  else if sayi7 == sayi2 {
            
            eksicount = eksicount + 1
            
        }   else if sayi7 == sayi3 {
            
            articount = articount + 1
            
        }   else if sayi7 == sayi4 {
            
            eksicount = eksicount + 1
            
        }
        if sayi8 == sayi1 {
            
            eksicount = eksicount + 1
            
        }   else if sayi8 == sayi2 {
            
            eksicount = eksicount + 1
            
        }   else if sayi8 == sayi3 {
            
            eksicount = eksicount + 1
            
        }   else if sayi8 == sayi4 {
            
           articount = articount + 1
          
        }
        //sonuc = [(" \(String(sayi5))\(String(sayi6))\(String(sayi7))\(String(sayi8)) = +\(articount) -\(eksicount)")]
        
        sonuc.append("\(String(sayi5))\(String(sayi6))\(String(sayi7))\(String(sayi8)) = +\(articount) -\(eksicount)")
        print(sonuc)
        table.reloadData()
        articount = 0
        eksicount = 0
        
        
    }
    
    
}

