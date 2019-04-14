//
//  TestXibView.swift
//  testXib
//
//  Created by Александр Филиппов on 03.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class TestXibView: UIView {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deliveryLabel: UILabel!
    @IBOutlet weak var transportationButton: UIButton!
    @IBOutlet weak var ownershipLabel: UILabel!
    @IBOutlet weak var rentButton: UIButton!
    
    @IBOutlet weak var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        Bundle.main.loadNibNamed("TestXibView", owner: self, options: nil)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
    }
}
