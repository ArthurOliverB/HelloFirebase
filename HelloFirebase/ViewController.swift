//
//  ViewController.swift
//  HelloFirebase
//
//  Created by Daniel Valente on 16/05/19.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {
    
    var handle: AuthStateDidChangeListenerHandle?
    @IBOutlet weak var RealizarLogin: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
// SE LOGADO
//        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
//            if let _ = user {
//                print("LOGOU")
//                self.performSegue(withIdentifier: "LoggedIn", sender: nil)
//            }
//        }
    }
    
    
    @IBAction func LoginAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: self.emailTextField.text!, password: self.senhaTextField.text!) { authResult, error in
            
            guard let user = authResult else {
                let alert = UIAlertController(title: "Vish!", message: "Parece que você não tem cadastro! :(", preferredStyle: .alert)
            
                alert.addAction(UIAlertAction(title: "Vou me cadastrar!", style: .cancel, handler: nil))
                self.present(alert, animated: true)
                
                return
            }
            
            print("Usuário logado com sucesso \(user.user.email!)")
        }
        
        performSegue(withIdentifier: "LoginSegue", sender: nil)
    }
    
    @IBAction func CadastrarAction(_ sender: Any) {
        Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.senhaTextField.text!) { authResult, error in
            
            guard let user = authResult?.user else {
                let alert = UIAlertController(title: "Vish!", message: "Ocorreu um erro inesperado! :(", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Vou me cadastrar!", style: .cancel, handler: nil))
                self.present(alert, animated: true)
                return
            }
            
            print("Usuário criado com sucesso \(user.email!)")
        }
    }
    
}

