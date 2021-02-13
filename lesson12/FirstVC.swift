//
//  FirstVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class FirstVC: UITableViewController {
    
    var persons = Person.createRandomPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    //Позволяет задать количество строк в таблице (count элементов массива задает количество строк)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let tempIndex = persons[indexPath.row]
        cell.textLabel?.text = tempIndex.name + " " + tempIndex.surName
        cell.imageView?.image = UIImage(named: String(tempIndex.avatar))
        
        return cell
    }

    // В приложении на основе раскадровки часто требуется небольшая подготовка перед навигацией
    // Получить новый контроллер представления, используя переход.место назначения.
    // Передать выбранный объект новому контроллеру вида.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "goToAbout" { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let aboutVC = segue.destination as? AboutVC
            aboutVC?.person = persons[indexPath.row]
        }
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
    
    /*
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    */
}
