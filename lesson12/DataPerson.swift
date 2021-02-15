//
//  DataPerson.swift
//  lesson12
//
//  Created by Валерий Игнатьев on 12.02.2021.
//

import Foundation

class DataPerson {
    
    //Static общие для всех экземпляров или объектов класса.
    //Когда мы определяем любую переменную как статическую, она прикрепляется к классу, а не к объекту.
    static let sharedInstance = DataPerson()
    
    var avatar = Array(1...13).shuffled()
    
    var name = ["Tommy", "Judah", "Tomas", "Prince", "Nickolas", "Mekhi", "Brycen",
                "Caleb", "Devon", "Dwayne", "Israel", "Talon"].shuffled()
    
    var surName = ["Caldwell", "Kidd", "Blair", "Morrison", "Keith", "Singleton", "Norman",
                   "King", "Mathews", "Phelps", "Johnston", "Gray", "Lyons"].shuffled()
    
    var email = ["dougj@verizon.net", "cosimo@live.com", "chaikin@comcast.net", "frosal@live.com",
                 "mddallara@sbcglobal.net", "jeteve@sbcglobal.net", "jimxugle@att.net", "jacks@live.com",
                 "cliffordj@msn.com", "tkrotchko@msn.com", "sfoskett@yahoo.ca", "vlefevre@att.net"].shuffled()
    
    var phoneNumber = ["816-626-1520", "305-965-6927", "908-231-6355", "507-777-8369", "337-965-4106",
                 "209-482-0945", "617-309-4966", "805-622-9798", "757-396-9969", "423-939-2057",
                 "860-768-9520", "410-520-9005", "856-575-8188"].shuffled()
}
