//
//  ViewController.swift
//  Auto_Layout
//
//  Created by Matheus de Sousa Matos on 19/08/21.
//

import UIKit

class ViewController: UIViewController {

    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let secondView: UIView = {
        let secondView = UIView()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.backgroundColor = .blue
        return secondView
    }()
    
    private let button: UIButton = {
        let button = UIButton(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
        button.backgroundColor = .red
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        view.addSubview(secondView)
        //view.addSubview(button)
        addConstraints()
    }
    
    //Button in center layout
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }

    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        //Add constraints
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        //SecondView
        constraints.append(secondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(secondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        constraints.append(secondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(secondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        
        //The multiplier or constant define width and height using myView for base.
        //constraints.append(button.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.15))
        //constraints.append(button.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.10 ))
        //constraints.append(button.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        //constraints.append(button.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        //Activate (Applaying)
        NSLayoutConstraint.activate(constraints)
        
        
    }

}

