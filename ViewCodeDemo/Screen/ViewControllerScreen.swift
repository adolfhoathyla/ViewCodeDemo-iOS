//
//  ViewControllerScreen.swift
//  ViewCodeDemo
//
//  Created by Adolfho Athyla de Almeida Beserra on 28/03/20.
//  Copyright © 2020 Adolfho Athyla de Almeida Beserra. All rights reserved.
//

import UIKit

class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Enviar", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension ViewControllerScreen: ViewCode {
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    func setupConstraints() {
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24.0).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24.0).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -24.0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .black
    }
}
