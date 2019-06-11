//
//  Curso.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase

enum TipoCurso: String {
    case Cul
    case Dev
    case Fin
    
    func tipo() -> String {
        return self.rawValue.lowercased()
    }
}

class Curso {
    var nome: String
    var rating: Float
    
    var ementa: String
    var tipo: TipoCurso
    var preco: Double
    
    var ref: DatabaseReference?
    
    init(nome:String, tipo: TipoCurso, ementa: String, rating:Float, preco: Double, ref:DatabaseReference?) {
        self.nome = nome
        self.tipo = tipo
        self.rating = rating
        self.ementa = ementa
        
        self.preco = preco
        self.ref = ref
    }
    
    func toAnyObject() -> Any {
        return ["nome":nome, "tipo": tipo.tipo(), "ementa": ementa, "rating":rating, "preco": preco]
    }
}
