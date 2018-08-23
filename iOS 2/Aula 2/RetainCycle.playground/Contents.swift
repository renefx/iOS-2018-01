//: Playground - noun: a place where people can play

import UIKit


class Pessoa {
    let nome: String
    var casa: Apartamento?
    
    init(nome: String) {
        self.nome = nome
    }
    
    deinit {
        print("\(nome) retirado da memoria")
    }
}

class Apartamento {
    let numero: Int
    weak var dono: Pessoa?

    init(numero: Int) {
        self.numero = numero
    }
    
    deinit {
        print("Ap \(numero) retirado da memoria")
    }
}

var rene:Pessoa? = Pessoa(nome: "rene")
var casa:Apartamento? = Apartamento(numero: 106)

print(rene?.nome)
print(rene?.casa)

print(casa?.numero)
print(casa?.dono)
casa?.dono = rene
rene?.casa = casa
casa = nil
rene = nil
