//
//  ColoredView.swift
//  nihongo_flashcards
//
//  Created by Joshua Stone on 11/29/20.
//

import UIKit

class ColoredView: UIView {
    init(width: CGFloat, height: CGFloat, color: UIColor) {
        super.init(frame: .zero)
        // create the constraints (layout anchors)
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        
        // Turn off automatic "frame" constraints
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = color
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
