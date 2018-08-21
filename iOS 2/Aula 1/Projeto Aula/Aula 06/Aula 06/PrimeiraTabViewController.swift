//
//  PrimeiraTabViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 12/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class PrimeiraTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let arrayVc = self.tabBarController?.viewControllers, let vc = arrayVc[1] as? SegundaTabViewController {
            vc.texto = "oi"
        }
        
    }

}

extension PrimeiraTabViewController: SegundaTabViewControllerDelegate {
    func enviar() {
        self.view.backgroundColor = UIColor.red
    }
    
    
}
