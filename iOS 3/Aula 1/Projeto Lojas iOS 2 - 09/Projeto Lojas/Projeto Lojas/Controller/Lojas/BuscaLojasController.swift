//
//  BuscaLojasController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 20/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class BuscaLojasController {
    var todasAsLojas: Results<Loja>?
    var lojasFiltradas: Results<Loja>?
    
    
    func buscarLojasInicais() {
        self.todasAsLojas = try! Realm().objects(Loja.self)
        self.lojasFiltradas = todasAsLojas
    }
    
    func quantidadeDeLojas() -> Int {
        return lojasFiltradas?.count ?? 0
    }
    
    func nomeDaLoja(_ index: Int) -> String {
        return lojasFiltradas?[index].nome ?? ""
    }

    func nomeLogoLoja(_ index: Int) -> String {
        return lojasFiltradas?[index].iconePequeno ?? ""
    }
    
    func buscarLojas(comNome searchText: String) {
        if searchText.isEmpty {
            lojasFiltradas = todasAsLojas
        } else {
//            lojasFiltradas = todasAsLojas.filter { $0.nome.lowercased().contains(searchText.lowercased()) }
        }
    }
}
