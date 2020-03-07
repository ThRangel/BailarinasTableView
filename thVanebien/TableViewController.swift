//
//  TableViewController.swift
//  thVanebien
//
//  Created by CEDAM05 on 5/31/19.
//  Copyright © 2019 PX. All rights reserved.
//

import UIKit

class Bailarina
{
    //Aqui vamos a declarar las propiedades o atributos
    let nombreA : String
    let imagenA : UIImage
    let infoA : String
    init(nombreAB : String, imagenAB : String, infoAB : String)
    {
        self.nombreA = nombreAB
        self.imagenA  = UIImage(named : imagenAB)!
        self.infoA = infoAB
        
    }
}
//clase de la vista
class TableViewController: UITableViewController {

    let bailarina2 : [Bailarina] =
        [
            Bailarina(nombreAB : "Jessy Muñoz", imagenAB : "jessy", infoAB : "Bailarina mexicana de Guadalajara actualmente baila en el ballet Nonosina en California USA"),
            Bailarina(nombreAB : "Conny Medina", imagenAB : "conny", infoAB : "Bailarina mexicana de Guadalajara, directora del ballet Ruahine danzas polinesias"),
             Bailarina(nombreAB : "Fernanda Villegas", imagenAB : "fer", infoAB : "Bailarina mexicana del Edo. de Mèxico, directora del ballet Te Varua O Te Natura "),
             Bailarina(nombreAB : "Rehina Na'i", imagenAB : "rehina", infoAB : "Bailarina mexicana de Tepoztlan Morelos, directora del ballet Fetia Vainui "),
             Bailarina(nombreAB : "Thelma Rangel", imagenAB : "th", infoAB : "Bailarina mexicana del Edo. de Mèxico Naucalpan, directora del grupo Manu Nui danzas polinesias")
            
        ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //Aqui en return cambiamos el 0 por el 1
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Aqui agregamos el tamaño de nuestro arreglo con count
        return bailarina2.count
    }
//Esta funcion es para pasar los objetos de la vista del table view a la vista view controller
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Se busca la direccion de la clase TableView
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaAmigo") as! TableViewCell
        //Aqui estamos igualando las variables de ambas clases
        celda.nombreBailarina.text = bailarina2[indexPath.row].nombreA
           celda.fotoBailarina.image = bailarina2[indexPath.row].imagenA
         celda.infoBailarina.text = bailarina2[indexPath.row].infoA
        return celda
    }
    //Pasar objetos de la clase TableViewController a la clase ViewCONTROLLER
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "informacionBailarina"{
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let destino = segue.destination as! ViewController
                destino.ima1 = self.bailarina2[indexPath.row].imagenA
               
                destino.nom1 = self.bailarina2[indexPath.row].nombreA
                destino.texto1 = self.bailarina2[indexPath.row].infoA
            }
        }
    }

}
//Pasar objetos de la clase TableViewController a la clase ViewCONTROLLER

