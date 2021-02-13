//
//  SecondVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class SecondVC: UITableViewController {
    
    let persons = Person.createRandomPerson()

    //Позволяет задать количество секций (серенькие)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    //Метод для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.surName
    }
    
    //Email u numberPhone )))
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
 
    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.section]
        let emailLabel = "Email:       \(person.email)"
        let phoneLabel = "Phone:     \(person.phoneNumber)"
        
        cell.textLabel?.text = indexPath.row == 0 ? emailLabel : phoneLabel
        return cell
    }
}
