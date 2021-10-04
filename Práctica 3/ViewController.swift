//
//  ViewController.swift
//  Práctica 3
//
//  Created by Luis Humberto Martinez Echegaray on 01/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textpregunta: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var respuesta: UILabel!
    @IBOutlet weak var TFRespuesta: UITextField!
    
    var index = 0
    let lista = ["Homer Simpson","Bart Simpson","Marge Simpson","Apu","Ned Flanders","Mr Burns"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Textpregunta.text = "¿Qué personaje es?"
        print("entro")
        actualizarContenido()
    }

    func actualizarContenido(){
        respuesta.text = " "
        imagen.image = UIImage(named: lista[index])
    }
    
    @IBAction func Verificar(_ sender: UIButton) {
    
        let nombreCompleto = lista[index].components(separatedBy: " ")
        if TFRespuesta.text?.uppercased() == lista[index].uppercased() || TFRespuesta.text?.uppercased() == nombreCompleto[0].uppercased(){
            respuesta.textColor = UIColor(named: "green")
            respuesta.text = "Correcto!"
        }
        else{
            respuesta.textColor = UIColor(named: "red")
            respuesta.text = "Incorrecto!"
        }
        
    }
    
    @IBAction func VerRespuesta(_ sender: UIButton) {
        respuesta.text = "Es " + lista[index]
    }
    
    @IBAction func siguiente(_ sender: UIButton) {
        index = (index + 1) % lista.count
        actualizarContenido()
    }

    
}

