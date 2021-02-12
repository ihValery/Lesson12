//
//  playersNBAViewController.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 12.02.2021.
//
/*
import UIKit

class playersNBAViewController: UITableViewController {
    
    var playerNBA = ["ADEBAYO BAM", "ANTETOKOUNMPO GIANNIS", "BEAL BRADLEY", "BROWN JAYLEN", "BUTLER JIMMY",
                     "DURANT KEVIN", "EMBIID JOEL", "GRANT JERAMI", "HARDEN JAMES", "HAYWARD GORDON",
                     "IRVING KYRIE", "LAVINE ZACH", "RANDLE JULIUS", "ROSE DERRICK", "SABONIS DOMANTAS",
                     "SEXTON COLLIN", "SIMMONS BEN", "TATUM JAYSON", "WESTBROOK RUSSELL", "YOUNG TRAE"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerNBA.shuffle()
        
        // Отобразить кнопку Редактирования на панели навигации для этого контроллера вида.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    //Позволяет задать количество секций (серенькие)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Позволяет задать количество строк в таблице (count элементов массива задает количество строк)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerNBA.count
    }

    //Настройка ячейки (Предоставьте объект ячейки для каждой строки) (сравниваем с работой цикла for-in)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerNBA", for: indexPath)
        
        cell.textLabel?.text = playerNBA[indexPath.row]
        //cell.textLabel?.numberOfLines = 0                               //Сняли ограничение на количество строк в Label
        cell.imageView?.image = UIImage(named: playerNBA[indexPath.row])
        
        return cell
    }
    
    //Позволяет задать высоту ячейки (к примеру что бы картинка была не огромной)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // В приложении на основе раскадровки часто требуется небольшая подготовка перед навигацией
    // Получить новый контроллер представления, используя переход.место назначения.
    // Передать выбранный объект новому контроллеру вида.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //indexPathForSelectedRow берет индекc у выделенной ячейки (опционал)
        if let indexPath = tableView.indexPathForSelectedRow {
            if segue.identifier == "goToAbout" {
                let aboutVC = segue.destination as? AboutVC
                aboutVC?.playerName = playerNBA[indexPath.row]
            }
        }
    }
    
    //Метод для перетаскивания ячеек. sourceIndexPath - откуда удаляем. destinationIndexPath - строка назначения, куда.
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentPlayer = playerNBA.remove(at: sourceIndexPath.row)
        playerNBA.insert(currentPlayer, at: destinationIndexPath.row)
        tableView.reloadData()                                                  //перезагрузка таблицы (что бы результат был виден)
    }
        
    //Для стиля (удаляем delete)  <- )))))
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return.none
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}
 
 */
