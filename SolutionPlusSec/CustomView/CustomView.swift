//
//  CustomView.swift
//  SolutionPlusSec
//
//  Created by Apple on 12/03/2024.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var titleLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        let nib = UINib(nibName: String(describing: CustomView.self), bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    private var contentView: UIView!

    // Customize the view as needed
    func configure(withTitle title: String) {
        titleLabel.text = title
    }
}
