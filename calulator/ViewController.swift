//
//  ViewController.swift
//  calculator
//
//  Created by 김도현 on 4/26/25.
//

import UIKit

class ViewController: UIViewController {
    
    func createButton(systemImageName: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: systemImageName), for: .normal)
        return button
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let button1 = createButton(systemImageName: "1.circle")
        let button2 = createButton(systemImageName: "2.circle")
        let button3 = createButton(systemImageName: "3.circle")
        let button4 = createButton(systemImageName: "4.circle")
        let button5 = createButton(systemImageName: "5.circle")
        let button6 = createButton(systemImageName: "6.circle")
        let button7 = createButton(systemImageName: "7.circle")
        let button8 = createButton(systemImageName: "8.circle")
        let button9 = createButton(systemImageName: "9.circle")
        let button0 = createButton(systemImageName: "0.circle")
        let buttonPlus = createButton(systemImageName: "plus.circle")
        let buttonMinus = createButton(systemImageName: "minus.circle")
        let buttonMultiply = createButton(systemImageName: "multiply.circle")
        let buttonDivide = createButton(systemImageName: "divide.circle")
        let buttonEqual = createButton(systemImageName: "equal.circle")
        
        let columnStack1 = UIStackView(arrangedSubviews: [button1, button4, button7])
        columnStack1.axis = .vertical
        let columnStack2 = UIStackView(arrangedSubviews: [button2, button5, button8, button0])
        columnStack2.axis = .vertical
        let columnStack3 = UIStackView(arrangedSubviews: [button3, button6, button9])
        columnStack3.axis = .vertical
        let columnStack4 = UIStackView(arrangedSubviews: [buttonPlus, buttonMinus, buttonMultiply, buttonDivide, buttonEqual])
        columnStack4.axis = .vertical
        
        let rowStack = UIStackView(arrangedSubviews: [columnStack1, columnStack2, columnStack3, columnStack4])
        rowStack.axis = .horizontal
        rowStack.distribution = .fillEqually
        rowStack.spacing = 4
        rowStack.alignment = .top
        rowStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rowStack)
        
        NSLayoutConstraint.activate([
            rowStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rowStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rowStack.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            rowStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }


}

