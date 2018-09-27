//
//  ListaBasicaTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 06/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ListaBasicaTableViewController: UITableViewController {

    let arrayTitulos = ["Primeira", "Segunda", "Terceira", "Quarta"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitulos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var identifier = ""
//        if indexPath.row == 0 {
//            identifier = "celulaTituloIdentifier"
//        } else if indexPath.row == 1 {
//            identifier = "celulaSubtitleIdentifier"
//        } else {
//            identifier = "celulaLeftDetailIdentifier"
//        }
        let identifier = indexPath.row % 2 == 0 ? "celulaTituloIdentifier" : "celulaSubtitleIdentifier"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = arrayTitulos[indexPath.row]
        cell.detailTextLabel?.text = "Detalhe"
        return cell
    }
}
