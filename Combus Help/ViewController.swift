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
        resultLabel.text = getResult()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Digite os valores e depois toque em verificar"

    }

    func getResult() -> String {
        if let gasolinaPrice = gasolinaTextInput.text{
            if let alcoolPrice = alcoolTextInput.text {
                if validateInputs(gasolinaPrice: gasolinaPrice, alcoolPrice: alcoolPrice){
                    if let result = calcBestPrice(gasolinaPrice: gasolinaPrice, alcoolPrice: alcoolPrice){
                        return "Melhor utilizar\n" + result.uppercased()
                    } else {
                        return "Algo foi digitado errado. Verifique por favor."
                    }
                } else {
                    return "Erro! Digite os valores."
                }
            }
        }
        return "Algo foi digitado errado. Verifique por favor."
    }
    
    func validateInputs(gasolinaPrice: String, alcoolPrice: String) -> Bool {
        var valid = true
        
        if gasolinaPrice.isEmpty {
            valid = false
        }
        
        if alcoolPrice.isEmpty {
            valid = false
        }
        
        return valid
    }
    
    func calcBestPrice(gasolinaPrice: String, alcoolPrice: String) -> String? {
        
        if let gasPrice = Double(gasolinaPrice){
            if let alcPrice = Double(alcoolPrice){
                return alcPrice/gasPrice >= 0.7 ? "gasolina" : "álcool"
            }
        }
        return nil
    }

}

