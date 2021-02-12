//
//  SecondVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class SecondVC: UITableViewController {
    
    var persons = Person.createRandomPerson()
    
    override func viewDidLoad() {
        self.navigationItem.rightBarButtonItem = self.editButtonItem
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
    
    //Email u numberPhone )))
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    /*
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    */
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.section]
        cell.textLabel?.text = (indexPath.section == 0 ? person.email : person.phoneNumber)
        return cell
    }
    
    //Метод для перетаскивания ячеек. sourceIndexPath - откуда удаляем. destinationIndexPath - строка назначения, куда.
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentPerson = persons.remove(at: sourceIndexPath.row)
        persons.insert(currentPerson, at: destinationIndexPath.row)
        tableView.reloadData() //перезагрузка таблицы (что бы результат был виден)
        
    }
    
    //Для стиля (удаляем delete)  <- )))))
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.none
    }
}
