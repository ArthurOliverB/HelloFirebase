import UIKit
import Firebase

class Instrutor {
    var nome: String
    var rating: Int
    var qtdCursos: Int
    var qtdAlunos: Int
    var ref: DatabaseReference?
    
    init(nome:String, rating:Int, qtdCursos:Int, qtdAlunos: Int,ref:DatabaseReference?) {
        self.nome = nome
        self.rating = rating
        self.qtdCursos = qtdCursos
        self.qtdAlunos = qtdAlunos
        self.ref = ref
    }
    
    func toAnyObject() -> Any {
        return ["nome":nome, "rating":rating, "qtdCursos":qtdCursos, "qtdAlunos": qtdAlunos]
    }
}
