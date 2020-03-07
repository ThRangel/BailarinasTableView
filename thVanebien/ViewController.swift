//
//  ViewController.swift
//  thVanebien
//
//  Created by CEDAM05 on 5/31/19.
//  Copyright © 2019 PX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var ima: UIImageView!
    var texto1 : String!
    var nom1 : String!
    var ima1 : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.texto.text = texto1
        self.nom.text = nom1
        self.ima.image = ima1
        //Para redondear imagen
        ima.layer.cornerRadius = 125
        //Animacion
        ima.clipsToBounds = true
        // Do any additional setup after loading the view.
    }


}

