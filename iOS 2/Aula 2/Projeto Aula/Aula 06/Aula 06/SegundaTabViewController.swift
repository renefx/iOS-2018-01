//
//  SegundaTabViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 12/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

protocol SegundaTabViewControllerDelegate: AnyObject {
    func enviar()
}

class SegundaTabViewController: UIViewController {

    var texto:String?
    weak var delegate:SegundaTabViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad " + (texto ?? ""))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear " + (texto ?? ""))
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        delegate?.enviar()
    }
}
