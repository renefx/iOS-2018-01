//
//  ClosureExemploController.swift
//  Aula 06
//
//  Created by Renê Xavier on 23/08/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation

class ClosureExemploController: NSObject {
    func recuperarNomeUsuario(recuperouNome: (String) -> Void ) {
        sleep(8)
        recuperouNome("Meu nome")
    }
}
