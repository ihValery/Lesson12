//
//  FirstVC.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 13.02.2021.
//

import UIKit

class FirstVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Убираем лишнюю разлиновку в таблице
        tableView.tableFooterView = UIView()
    }
    
    var persons = Person.createRandomPerson().sorted(by: { $0.name < $1.name })
    
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
        //Размер title в ячейке
        //cell.textLabel?.font = UIFont(descriptor: .init(), size: 20)
        
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
}
