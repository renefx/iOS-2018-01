//
//  ViewController.swift
//  Requisicao Server
//
//  Created by Renê Xavier on 01/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let controller = RequestController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.getPriceOfCurrency(currency: "BTC") { (price) in
            print("Atualizar view com o \(price)")
        }
    }
}















