//
//  MainViewController.swift
//  FlashlightProgrammaticUI
//
//  Created by Mahmut Senbek on 18.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 150))

    override func viewDidLoad() {
        super.viewDidLoad()
configureButton()
        
    }
    
    func configureButton() {
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("", for: UIControl.State.normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(buttonTapped), for: UIControl.Event.touchUpInside)
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0)
       
        ])
   
    }
    
    @objc func buttonTapped(sender : UIButton!) {
        print("tapped")
        if button.backgroundColor == .black {
            view.backgroundColor = .white
            button.backgroundColor = .white
        }else {
            view.backgroundColor = .black
            button.backgroundColor = .black
        }
    }
    

 

}
