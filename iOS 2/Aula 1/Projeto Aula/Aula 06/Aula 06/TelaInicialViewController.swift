//
//  TelaInicialViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 02/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class TelaInicialViewController: UIViewController {
    

    @IBOutlet weak var textoUsuario: UITextField!
    @IBOutlet weak var botaoStoryboardCodigo: UIButton!
    @IBOutlet var botoesDaTela: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        botaoStoryboardCodigo.backgroundColor = UIColor.cyan;
//        botoesDaTela[0].backgroundColor = UIColor.gray;
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        //Exemplo de uso do should perform segue
        if (identifier == "TelaVerdeViewControllerSegueIdentifier" && botaoStoryboardCodigo.backgroundColor == UIColor.black) {
            return false;
        }
        return true;
    }
    
    
    
    @IBAction func clicouBotaoStoryboardCodigo(_ sender: Any) {
        
        self.performSegue(withIdentifier: "TelaVerdeViewControllerSegueIdentifier", sender: nil)
        
    }

    @IBAction func clicouBotaoCodigo(_ sender: UIButton) {
        sender.backgroundColor = UIColor.black;
        botaoStoryboardCodigo.backgroundColor = UIColor.brown;
        botoesDaTela[0].backgroundColor = UIColor.blue;
        
        
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        let telaVerdeViewController = storyboardMain.instantiateViewController(withIdentifier: "telaVerdeStoryboardID")
        
        //nao utiliza a Nav Bar, por isso nao exibe o botao voltar
        present(telaVerdeViewController, animated: true, completion: nil)
    }
    
    @IBAction func buttonNavControllerPressed(_ sender: Any) {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        let telaVerdeViewController = storyboardMain.instantiateViewController(withIdentifier: "telaVerdeStoryboardID")
        self.navigationController?.pushViewController(telaVerdeViewController, animated: true)
    }
    
    @IBAction func escreverTextoDigitado(_ sender: Any) {
        print(textoUsuario.text ?? "nil")
    }
    
    
}

