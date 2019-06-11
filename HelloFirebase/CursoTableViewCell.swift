//
//  CursoTableViewCell.swift
//  HelloFirebase
//
//  Created by Aluno R17 on 06/06/2019.
//  Copyright © 2019 Daniel Valente. All rights reserved.
//

import UIKit

class CursoTableViewCell: UITableViewCell {

    @IBOutlet weak var cursoImageView: UIImageView!
    @IBOutlet weak var cursoTituloLabel: UILabel!
    @IBOutlet weak var cursoAutorLabel: UILabel!
    @IBOutlet weak var cursoRatingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
