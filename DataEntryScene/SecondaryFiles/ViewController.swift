//
//  ViewController.swift
//  DataEntryScene
//
//  Created by Evangelos Spyromilios on 29.12.22.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet var titleView: UITextView!
	@IBOutlet var descriptionView: UITextView!
	
	@IBOutlet var cgiImage: UIImageView!
	
	override func viewDidLoad() {
		setTitleView()
		setDescriptionView()
		setImageView()
	}
	
	func setTitleView() {
		titleView.textContainer.maximumNumberOfLines = 1
		titleView.isScrollEnabled = false
		titleView.textContainer.lineBreakMode = .byTruncatingTail
	}
	
	func setDescriptionView() {
		descriptionView.textContainer.maximumNumberOfLines = 3
		descriptionView.isScrollEnabled = false
		descriptionView.textContainer.lineBreakMode = .byTruncatingTail
	}
	
	func setImageView() {
		cgiImage.isUserInteractionEnabled = false
		cgiImage.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.8)
		cgiImage.layer.borderWidth = 2.0
		
	}
}

