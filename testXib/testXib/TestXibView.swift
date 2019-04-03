//
//  TestXibView.swift
//  testXib
//
//  Created by Александр Филиппов on 03.04.2019.
//  Copyright © 2019 Philalex. All rights reserved.
//

import UIKit

class TestXibView: UIView {

    @IBOutlet weak var titleButton: UILabel!
    @IBOutlet weak var transportation: UIButton!
    @IBOutlet weak var deliveryButton: UILabel!
    @IBOutlet weak var rentButton: UIButton!
    @IBOutlet weak var ownershipButton: UILabel!
    
    var view:UIView!
    var nibName: String = "TestXibView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func loadFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setup() {
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    
}
