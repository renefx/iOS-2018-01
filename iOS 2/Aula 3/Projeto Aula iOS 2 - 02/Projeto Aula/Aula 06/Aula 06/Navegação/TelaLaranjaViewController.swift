//
//  TelaLaranjaViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 12/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class TelaLaranjaViewController: UIViewController {
    var unwind = "unwind var"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func voltarTelaInicial(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
