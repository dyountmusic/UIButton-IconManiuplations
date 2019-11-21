//
//  RoundedOutlineButton.swift
//  ButtonWithIcon
//
//  Created by Daniel Yount on 11/20/19.
//  Copyright © 2019 Daniel Yount. All rights reserved.
//

import UIKit

@IBDesignable class RoundedOutlineButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        applyButtonStyle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyButtonStyle()
    }
    
    override func prepareForInterfaceBuilder() {
        applyButtonStyle()
    }
    
}

extension RoundedOutlineButton {
    func applyButtonStyle() {
        backgroundColor = .clear
        
        setTitleColor(.black, for: .normal)
        setTitleColor(.darkGray, for: .highlighted)
        setTitle("Press Me!", for: .normal)
        
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        
        layer.cornerRadius = 7
        layer.cornerCurve = .continuous
        
        imageView?.contentMode = .scaleAspectFit
    }
}
