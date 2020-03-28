//
//  ViewCode.swift
//  ViewCodeDemo
//
//  Created by Adolfho Athyla de Almeida Beserra on 28/03/20.
//  Copyright © 2020 Adolfho Athyla de Almeida Beserra. All rights reserved.
//

import Foundation

protocol ViewCode {
    //first
    func buildViewHierarchy()
    
    //second
    func setupConstraints()
    
    //third
    func setupAdditionalConfiguration()
    
    //setup methods call hierarchy 
    func setupView()
}

extension ViewCode {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
