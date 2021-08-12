//
//  ViewController.swift
//  PreWork2
//
//  Created by James  Luberisse on 8/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var BillAmount: UILabel!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var billAmountTextField: UITextField!
        
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var LightMode: UIImageView!
    
    @IBOutlet weak var DarkMode: UIImageView!
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmountLabel.text  = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func darkButton(_ sender: Any) {
        mainView.backgroundColor = UIColor.secondaryLabel;
        
        
        BillAmount.textColor = UIColor.white;

        Tip.textColor = UIColor.white;

    
        Total.textColor = UIColor.white;

        tipAmountLabel.textColor = UIColor.white;

        totalLabel.textColor = UIColor.white;




        
    }
    
    @IBAction func darkLight(_ sender: Any) {
        mainView.backgroundColor = UIColor.white
        

        
        BillAmount.textColor = UIColor.black;

        Tip.textColor = UIColor.black;

    
        Total.textColor = UIColor.black;

        tipAmountLabel.textColor = UIColor.black;

        totalLabel.textColor = UIColor.black;

    }
}
