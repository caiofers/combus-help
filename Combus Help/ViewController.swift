//
//  ViewController.swift
//  Combus Help
//
//  Created by Caio Fernandes on 07/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gasolinaTextInput: UITextField!
    @IBOutlet weak var alcoolTextInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func resultButton(_ sender: UIButton) {
        resultLabel.text = "Melhor utilizar\n" + getResult().uppercased()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func getResult() -> String {
        return "Teste"
    }

}

