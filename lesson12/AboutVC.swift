//
//  AboutVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 12.02.2021.
//

import UIKit

class AboutVC: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    //Мы сюда перейдем при условии что person будет
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name + " " + person.surName
        avatar.image = UIImage(named: String(person.avatar))
        emailLabel.text = "Email:       \(person.email)"
        phoneNumberLabel.text = "Phone:     \(person.phoneNumber)"
    }
}
