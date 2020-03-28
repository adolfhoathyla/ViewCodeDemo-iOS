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
    
    let gridBox = GridBoxView()
    
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
        addSubview(gridBox)
    }
    
    func setupConstraints() {
        
        button.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(24.0)
            make.right.equalTo(self).inset(24.0)
            make.bottom.equalTo(self).inset(24.0)
            make.height.equalTo(45.0)
        }
        
        gridBox.snp.makeConstraints { (make) in
            make.height.width.equalTo(200.0)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .black
    }
}
