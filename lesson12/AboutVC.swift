//
//  AboutVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 12.02.2021.
//

import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var fotoPlayer: UIImageView!
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var teamLogo: UIImageView!
    
    var playerName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fotoPlayer.image = UIImage(named: playerName)
        labelPlayer.text = playerName
        labelPlayer.numberOfLines = 0
        
    }
}
