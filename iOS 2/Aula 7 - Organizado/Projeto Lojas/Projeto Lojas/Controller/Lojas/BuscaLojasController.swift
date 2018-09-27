//
//  BuscaLojasController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 20/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//


class BuscaLojasController {
    
    let nomeLojas = ["Casas Bahia","Ricardo Electro","Juninho System","Americanas"]
    let logoLoja = ["header-bahianinho", "header-ricardo","logo","liked"]
    var lojasFiltradas: [String] = []
    
    init() {
        lojasFiltradas = nomeLojas
    }
    
    func quantidadeDeLojas() -> Int {
        return lojasFiltradas.count
    }
    
    func nomeDaLoja(_ index: Int) -> String {
        return lojasFiltradas[index]
    }

    func nomeLogoLoja(_ index: Int) -> String {
        return logoLoja[index]
    }
    
    func buscarLojas(comNome searchText: String) {
        lojasFiltradas = nomeLojas.filter { $0.contains(searchText) }
    }
}
