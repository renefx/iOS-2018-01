//
//  TelaVerdeViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 09/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

protocol TelaVerdeViewControllerDelegate: AnyObject {
    func voltarPassandoArgumentos(_ texto:String)
}

class TelaVerdeViewController: UIViewController {
    weak var delegate: TelaVerdeViewControllerDelegate?
    
    var texto: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonVoltarPressed(_ sender: Any) {
        delegate?.voltarPassandoArgumentos("texto de retorno")
//        quando se utiliza a nav bar, para voltar a tela, usa o pop
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func buttonVoltarSemNavBar(_ sender: Any) {
//        quando nao se utiliza nav bar, para voltar a tela, usa o dismiss
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func voltarParaTelaVerde(_ sender: UIStoryboardSegue)  {
        if let origin = sender.source as? TelaLaranjaViewController {
            print(origin.unwind)
        }
    }
}
