//
//  ViewController.swift
//  VennDiagram
//
//  Created by Dimitar Petrovski on 24.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vennDiagram: VennDiagram!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func leftTapped(sender: UIButton) {
        self.vennDiagram.weight = VennWeight.Left
    }
    
    @IBAction func balancedTapped(sender: UIButton) {
        self.vennDiagram.weight = VennWeight.Balanced
    }
    
    @IBAction func rightTapped(sender: UIButton) {
        self.vennDiagram.weight = VennWeight.Right
    }

}

