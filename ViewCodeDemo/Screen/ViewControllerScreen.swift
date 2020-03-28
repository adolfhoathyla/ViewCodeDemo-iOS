//
//  ViewControllerScreen.swift
//  ViewCodeDemo
//
//  Created by Adolfho Athyla de Almeida Beserra on 28/03/20.
//  Copyright © 2020 Adolfho Athyla de Almeida Beserra. All rights reserved.
//

import UIKit
import SnapKit

class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Enviar", for: .normal)
        view.setTitleColor(.black, for: .normal)
        return view
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
    lazy var container: UIStackView = {
        let container = UIStackView(frame: .zero)
        container.axis = .horizontal
        container.distribution = .fillEqually
        container.spacing = 8.0
        return container
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
        container.addArrangedSubview(leftBox)
        container.addArrangedSubview(rightBox)
        addSubview(container)
    }
    
    func setupConstraints() {
        
        button.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(24.0)
            make.right.equalTo(self).inset(24.0)
            make.bottom.equalTo(self).inset(24.0)
            make.height.equalTo(45.0)
        }
        
        container.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(24.0)
            make.right.equalTo(self).inset(24.0)
            make.height.equalTo(self).multipliedBy(0.3)
            make.centerY.centerX.equalTo(self)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .black
    }
}
