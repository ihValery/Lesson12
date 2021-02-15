//
//  SecondVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class SecondVC: UITableViewController {
    
    let persons = Person.createRandomPerson().sorted { (a, b) -> Bool in
        a.name > b.name
    }
    
    //Позволяет задать количество секций (серенькие)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    //Метод для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.surName
    }
    
//    // Использование метода для кастомизации секции без использования кастомного класса
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//        let person = persons[section]
//        
//        let myView = UIView()
//        myView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//        
//        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
//        label.text = person.name + " " + person.surName
//        label.textColor = .black
//        
//        myView.addSubview(label)
//        return myView
//    }
    
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
