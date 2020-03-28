//
//  GridBoxView.swift
//  ViewCodeDemo
//
//  Created by Adolfho Athyla de Almeida Beserra on 28/03/20.
//  Copyright © 2020 Adolfho Athyla de Almeida Beserra. All rights reserved.
//

import UIKit
import SnapKit

class GridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.backgroundColor = .white
        return image
    }()
    
    lazy var textContainer: UIStackView = {
        let container = UIStackView(frame: .zero)
        container.axis = .vertical
        container.distribution = .fillEqually
        container.spacing = 8.0
        return container
    }()
    
    lazy var title: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = .orange
        return label
    }()
    
    lazy var subtitle: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = .gray
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

extension GridBoxView: ViewCode {
    func buildViewHierarchy() {
        self.addSubview(imageView)
        self.textContainer.addArrangedSubview(title)
        self.textContainer.addArrangedSubview(subtitle)
        self.addSubview(textContainer)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.left.top.right.equalTo(self)
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        textContainer.snp.makeConstraints { (make) in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(8.0)
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}

