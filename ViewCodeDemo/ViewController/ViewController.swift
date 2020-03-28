//
//  ViewController.swift
//  ViewCodeDemo
//
//  Created by Adolfho Athyla de Almeida Beserra on 28/03/20.
//  Copyright © 2020 Adolfho Athyla de Almeida Beserra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let screen = ViewControllerScreen()
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Initialization -> ViewController")
    }

}

