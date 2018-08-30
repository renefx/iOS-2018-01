//
//  TelaAmarelaViewController.swift
//  Aula 06
//
//  Created by Renê Xavier on 23/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class TelaAmarelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let notificacao = Notification.Name.init("notificacaoDeTelaAberta")
        NotificationCenter.default.post(name: notificacao, object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
