//
//  Model.swift
//  ToDoList
//
//  Created by Tatiana Zudina on 04.04.2022.
//

import Foundation

var ToDoItems: [[String: Any]] = [["Name": "Call my mom", "isCompleted": true], ["Name": "Call my sister", "isCompleted": false], ["Name": "Call my brother", "isCompleted": false]]

func addItem(nameItem: String, isCompleted: Bool = false) {
	ToDoItems.append(["Name": nameItem, "isCompleted": isCompleted])
	saveData()
}

func removeItem(at index: Int) {
	ToDoItems.remove(at: index)
	saveData()
}

func  changeState(at item: Int) -> Bool {
	ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
	
	saveData()

	return ToDoItems[item]["isCompleted"] as! Bool
}

func saveData() {
	
}

func loadData() {
	
}
