//
//  ViewController6.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 08/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import UIKit

class ViewController6: UIViewController {

    @IBOutlet weak var realizar: UIButton!
    @IBOutlet weak var pedido: UILabel!
    var size:String?
    var masa:String?
    var queso:String?
    var ing1:String?
    var ing2:String?
    var ing3:String?
    var ing4:String?
    var ing5:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        pedido.text = "Tamaño: \(size!) Masa: \(masa!) Queso: \(queso!) Ingredientes: \(ing1!) \(ing2!) \(ing3!) \(ing4!) \(ing5!)"
        if ((size!=="")||(masa!=="")||(queso!=="")) {
            pedido.text = "No se puede realizar el pedido"
            realizar.isEnabled=false
        }
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
