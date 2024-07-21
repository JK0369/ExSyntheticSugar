//
//  ViewController.swift
//  ExSyntheticSugar
//
//  Created by 김종권 on 2024/07/21.
//

import UIKit

// 일반적으로 데이터 모델은 struct로 선언하지만, 예시를 위해 class타입으로 설정
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


class ViewController: UIViewController {
    var person: Person? = Person(name: "jake", age: 20)
        
    func updatePerson(person: Person) {
        let currentAge = person.age
        person.age = currentAge + 1
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        person.map(updatePerson(person:))
        
        if let person {
            updatePerson(person: person)
        }
    }
}
