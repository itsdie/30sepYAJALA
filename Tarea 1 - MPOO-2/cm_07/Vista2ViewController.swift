//
//  Vista2ViewController.swift
//  cm_07
//
//  Created by Germán Santos Jaimes on 18/09/24.
//


import UIKit

class Vista2ViewController: UIViewController{
    var recibe: alumno? = nil
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var circularImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recibe)
        print(recibe)
        //label!.text = recibe!.nombre
        //circularImageView!.image = UIImage(named: recibe!.imagen)
        //makeImageCircular()
        //print(circularImageView)
        if let alumno = recibe {
                    label.text = alumno.nombre
                    circularImageView.image = UIImage(named: alumno.imagen)
                    let newSize = CGSize(width: 150, height: 150)
            circularImageView.frame.size = newSize 
                    makeImageCircular()
    }
    
}
    func makeImageCircular() {
            circularImageView.layer.cornerRadius = circularImageView.frame.size.width / 2
            circularImageView.clipsToBounds = true
            circularImageView.contentMode = .scaleAspectFill
        }
    }
