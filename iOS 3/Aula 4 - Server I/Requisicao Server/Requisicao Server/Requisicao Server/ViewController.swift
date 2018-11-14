//
//  ViewController.swift
//  Requisicao Server
//
//  Created by Renê Xavier on 01/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imagemRaposa: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requisicaoAPICrypto()
        requisicaoAPIFox()
    }
    
    func requisicaoAPICrypto() {
        guard let url = URL(string: "https://chasing-coins.com/api/v1/std/coin/BTC") else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            // Retornar da chamada do servidor
            print("dentro - executa somente quando retornar")
            guard let data = data, error == nil else {
                print(error.debugDescription)
                return
            }
            
            if let serverResponse = response as? HTTPURLResponse, serverResponse.statusCode != 200 {
                print("Status code \(serverResponse.statusCode)")
                print(HTTPURLResponse.localizedString(forStatusCode: serverResponse.statusCode))
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                if let dicionario = json as? Dictionary<String, Any> {
                    print(dicionario)
                    let preco = dicionario["price"]
                    print(preco)
                }
            } catch {
                print("Falhou a transformacao de bytes para json")
            }
        }
        session.resume()
        // Executado primeiro que a closure
        print("fora - executa primeiro")
    }

    func requisicaoImagemFox() {
        guard let url = URL(string: "http://randomfox.ca/images/99.jpg") else {
            print("Erro URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Retorno vazio")
                return
            }
            
            if let serverResponse = response as? HTTPURLResponse, serverResponse.statusCode != 200 {
                print("Status code \(serverResponse.statusCode)")
                print(HTTPURLResponse.localizedString(forStatusCode: serverResponse.statusCode))
            }
            
            print("primeiro 1")
            DispatchQueue.main.async {
                print("terceiro 3")
                let imagem = UIImage(data: data)
                self.imagemRaposa.image = imagem
            }
            print("segundo 2")
        }
        session.resume()
    }
    
    func requisicaoAPIFox() {
        guard let url = URL(string: "https://randomfox.ca/floof/") else {
            print("Erro URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Retorno vazio")
                return
            }
            
            if let serverResponse = response as? HTTPURLResponse, serverResponse.statusCode != 200 {
                print("Status code \(serverResponse.statusCode)")
                print(HTTPURLResponse.localizedString(forStatusCode: serverResponse.statusCode))
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                if let dicionario = json as? Dictionary<String, Any> {
                    let urlImagemJson = dicionario["image"] as? String
                    if let urlImagemJson = urlImagemJson, let urlImagem = URL(string: urlImagemJson) {
                        do {
                            let data = try Data(contentsOf: urlImagem)
                            DispatchQueue.main.async {
                                let imagem = UIImage(data: data)
                                self.imagemRaposa.image = imagem
                            }
                        } catch {}
                    }
                }
            } catch {
                print("Falhou a transformacao de bytes para json")
            }
        }
        session.resume()
    }
}















