//
//  Curso.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase

class Instrutor {
    var nome: String
    var rating: Int
    
    var ementa: String
    var tipo: String
    var preco: Double
    
    var ref: DatabaseReference?
    
    init(nome:String, tipo: String, ementa: String, rating:Int, preco: Double, ref:DatabaseReference?) {
        self.nome = nome
        self.tipo = tipo
        self.rating = rating
        self.ementa = ementa
        
        self.preco = preco
        self.ref = ref
    }
    
    func toAnyObject() -> Any {
        return ["nome":nome, "tipo": tipo, "ementa": ementa, "rating":rating, "preco": preco]
    }
}
