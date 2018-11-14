//
//  RequestController.swift
//  Requisicao Server
//
//  Created by Renê Xavier on 13/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import Foundation

class RequestController {
    
    
    func getPriceOfCurrency(currency: String, jsonHandler: @escaping (String?) -> ()) {
        guard let url = URL(string: "https://chasing-coins.com/api/v1/std/coin/" + currency) else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            // Retornar da chamada do servidor
            print("dentro - executa somente quando retornar")
            guard let data = data, error == nil else {
                print(error.debugDescription)
                jsonHandler(nil)
                return
            }
            
            if let serverResponse = response as? HTTPURLResponse, serverResponse.statusCode != 200 {
                print("Status code \(serverResponse.statusCode)")
                print(HTTPURLResponse.localizedString(forStatusCode: serverResponse.statusCode))
            }
            
            do {
                let coinObject = try JSONDecoder().decode(Coin.self, from: data)
                print(coinObject.price)
                jsonHandler(coinObject.price)
            } catch {
                print("Falhou a transformacao de bytes para json")
            }
        }
        session.resume()
        // Executado primeiro que a closure
        print("fora - executa primeiro")
    }
}
