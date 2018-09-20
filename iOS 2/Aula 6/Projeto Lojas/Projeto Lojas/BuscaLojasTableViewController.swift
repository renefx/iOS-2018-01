//
//  BuscaLojasTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 13/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class BuscaLojasTableViewController: UITableViewController {

    let nomeLojas = ["Casas Bahia","Ricardo Electro","Juninho System","Americanas"]
    let logoLoja = [#imageLiteral(resourceName: "header-bahianinho"),#imageLiteral(resourceName: "header-ricardo"),#imageLiteral(resourceName: "logo"),#imageLiteral(resourceName: "liked")]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomeLojas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lojasCellIdentifier", for: indexPath)
        if let cellLoja = cell as? LojaTableViewCell {
            cellLoja.nomeLoja.text = nomeLojas[indexPath.row]
            cellLoja.logoLoja.image = logoLoja[0]
            cellLoja.likeButton.imageView?.image = UIImage(named: "like")
            
            return cellLoja
        }
        
        return cell
    }


}
