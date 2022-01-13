//
//  ViewController.swift
//  MastercardSonic
//
//  Created by lingshizhuangzi@gmail.com on 01/13/2022.
//  Copyright (c) 2022 lingshizhuangzi@gmail.com. All rights reserved.
//

import UIKit
import MastercardSonic

class ViewController: UIViewController {
    
    private lazy var sonicView: MCSonicView = {
        let view = MCSonicView()
        view.keepBackground = false
        return view
    }()
    
    private lazy var sonicManager: MCSonicController = {
        return MCSonicController()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MastercardSonic Example"
        
        view.addSubview(sonicView)
        sonicView.frame = CGRect(x: UIScreen.main.bounds.size.width / 2 - 80, y: UIScreen.main.bounds.size.height / 2 - 60, width: 160, height: 120)
        
        prepareSonic()
    }
    
    private func prepareSonic() {
        DispatchQueue.global().async { [weak self] in
            self?.sonicManager.prepare(with: .soundAndAnimation) { status in
                DispatchQueue.main.async {
                    self?.playSonic()
                }
            }
        }
    }
    
    private func playSonic() {
        if !sonicManager.isPlaying {
            sonicManager.play(with: sonicView, completion: nil)
        }
    }

}

