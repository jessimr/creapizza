//
//  ViewController5.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 08/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mensaje1: UILabel!
    @IBOutlet weak var mensaje2: UILabel!
    @IBOutlet weak var mensaje3: UILabel!
    @IBOutlet weak var mensaje4: UILabel!
    @IBOutlet weak var mensaje5: UILabel!
   // @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var ing1: UITextField!
    @IBOutlet weak var ing2: UITextField!
    @IBOutlet weak var ing3: UITextField!
    @IBOutlet weak var ing4: UITextField!
    @IBOutlet weak var ing5: UITextField!
    var size:String?
    var masa:String?
    var queso:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GuardarIngredientes(_ sender: Any) {
        let i1:String?
        i1 = self.ing1.text!
        let i2:String?
        i2 = self.ing2.text!
        let i3:String?
        i3 = self.ing3.text!
        let i4:String?
        i4 = self.ing4.text!
        let i5:String?
        i5 = self.ing5.text!
        print ("Ingredientes: \(i1), \(i2), \(i3), \(i4), \(i5)")
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
        sender.resignFirstResponder()//desaparecer teclado
    }
    
    @IBAction func backgroundTap (sender:UIControl){
        ing1.resignFirstResponder()
        ing2.resignFirstResponder()
        ing3.resignFirstResponder()
        ing4.resignFirstResponder()
        ing5.resignFirstResponder()
        let i1:String?
        i1 = self.ing1.text!
        let i2:String?
        i2 = self.ing2.text!
        let i3:String?
        i3 = self.ing3.text!
        let i4:String?
        i4 = self.ing4.text!
        let i5:String?
        i5 = self.ing5.text!
        if ((i1!=="jamón")||(i1!=="pepperoni")||(i1!=="pavo")||(i1!=="salchicha")||(i1!=="aceituna")||(i1!=="cebolla")||(i1!=="pimiento")||(i1!=="piña")||(i1!=="anchoa")||(i1!=="atún")||(i1!=="champiñones")||(i1!=="huevo")||(i1!=="bacon")||(i1!=="")){
            mensaje1.text = "\(i1!)"
        }else{
            mensaje1.text = "No válido"
        }
        if ((i2!=="jamón")||(i2!=="pepperoni")||(i2!=="pavo")||(i2!=="salchicha")||(i2!=="aceituna")||(i2!=="cebolla")||(i2!=="pimiento")||(i2!=="piña")||(i2!=="anchoa")||(i2!=="atún")||(i2!=="champiñones")||(i1!=="huevo")||(i2!=="bacon")||(i2!=="")){
            mensaje2.text = "\(i2!)"
        }else{
            mensaje2.text = "No válido"
        }
        if ((i3!=="jamón")||(i3!=="pepperoni")||(i3!=="pavo")||(i3!=="salchicha")||(i3!=="aceituna")||(i3!=="cebolla")||(i3!=="pimiento")||(i3!=="piña")||(i3!=="anchoa")||(i3!=="atún")||(i3!=="champiñones")||(i3!=="huevo")||(i3!=="bacon")||(i3!=="")){
            mensaje3.text = "\(i3!)"
        }else{
            mensaje3.text = "No válido"
        }
        if ((i4!=="jamón")||(i4!=="pepperoni")||(i4!=="pavo")||(i4!=="salchicha")||(i4!=="aceituna")||(i4!=="cebolla")||(i4!=="pimiento")||(i4!=="piña")||(i4!=="anchoa")||(i4!=="atún")||(i4!=="champiñones")||(i4!=="huevo")||(i4!=="bacon")||(i4!=="")){
            mensaje4.text = "\(i4!)"
        }else{
            mensaje4.text = "No válido"
        }
        if ((i5!=="jamón")||(i5!=="pepperoni")||(i5!=="pavo")||(i5!=="salchicha")||(i5!=="aceituna")||(i5!=="cebolla")||(i5!=="pimiento")||(i5!=="piña")||(i5!=="anchoa")||(i5!=="atún")||(i5!=="champiñones")||(i5!=="huevo")||(i5!=="bacon")||(i5!=="")){
            mensaje5.text = "\(i5!)"
        }else{
            mensaje5.text = "No válido"
        }
    }
    
/*    @IBAction func textFieldDidBeginEditing(_ textField: UITextField) {
        var punto:CGPoint
        punto = CGPoint.init(x:0,y:textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let i1:String?
        i1 = self.ing1.text!
        let i2:String?
        i2 = self.ing2.text!
        let i3:String?
        i3 = self.ing3.text!
        let i4:String?
        i4 = self.ing4.text!
        let i5:String?
        i5 = self.ing5.text!
        let sigVista = segue.destination as! ViewController6
        sigVista.masa = masa
        sigVista.size = size
        sigVista.queso = queso
        sigVista.ing1 = i1
        sigVista.ing2 = i2
        sigVista.ing3 = i3
        sigVista.ing4 = i4
        sigVista.ing5 = i5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let i1:String?
        i1 = self.ing1.text!
        let i2:String?
        i2 = self.ing2.text!
        let i3:String?
        i3 = self.ing3.text!
        let i4:String?
        i4 = self.ing4.text!
        let i5:String?
        i5 = self.ing5.text!
        if ((i1!=="jamón")||(i1!=="pepperoni")||(i1!=="pavo")||(i1!=="salchicha")||(i1!=="aceituna")||(i1!=="cebolla")||(i1!=="pimiento")||(i1!=="piña")||(i1!=="anchoa")||(i1!=="atún")||(i1!=="champiñones")||(i1!=="huevo")||(i1!=="bacon")||(i1!=="")){
            mensaje1.text = "\(i1!)"
        }else{
            mensaje1.text = "No válido"
        }
        if ((i2!=="jamón")||(i2!=="pepperoni")||(i2!=="pavo")||(i2!=="salchicha")||(i2!=="aceituna")||(i2!=="cebolla")||(i2!=="pimiento")||(i2!=="piña")||(i2!=="anchoa")||(i2!=="atún")||(i2!=="champiñones")||(i1!=="huevo")||(i2!=="bacon")||(i2!=="")){
            mensaje2.text = "\(i2!)"
        }else{
            mensaje2.text = "No válido"
        }
        if ((i3!=="jamón")||(i3!=="pepperoni")||(i3!=="pavo")||(i3!=="salchicha")||(i3!=="aceituna")||(i3!=="cebolla")||(i3!=="pimiento")||(i3!=="piña")||(i3!=="anchoa")||(i3!=="atún")||(i3!=="champiñones")||(i3!=="huevo")||(i3!=="bacon")||(i3!=="")){
            mensaje3.text = "\(i3!)"
        }else{
            mensaje3.text = "No válido"
        }
        if ((i4!=="jamón")||(i4!=="pepperoni")||(i4!=="pavo")||(i4!=="salchicha")||(i4!=="aceituna")||(i4!=="cebolla")||(i4!=="pimiento")||(i4!=="piña")||(i4!=="anchoa")||(i4!=="atún")||(i4!=="champiñones")||(i4!=="huevo")||(i4!=="bacon")||(i4!=="")){
            mensaje4.text = "\(i4!)"
        }else{
            mensaje4.text = "No válido"
        }
        if ((i5!=="jamón")||(i5!=="pepperoni")||(i5!=="pavo")||(i5!=="salchicha")||(i5!=="aceituna")||(i5!=="cebolla")||(i5!=="pimiento")||(i5!=="piña")||(i5!=="anchoa")||(i5!=="atún")||(i5!=="champiñones")||(i5!=="huevo")||(i5!=="bacon")||(i5!=="")){
            mensaje5.text = "\(i5!)"
        }else{
            mensaje5.text = "No válido"
        }
        
        self.view.endEditing(true)
        return false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
