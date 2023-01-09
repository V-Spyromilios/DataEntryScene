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
	@IBOutlet weak var titleLable: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!

	@IBAction func onSubmit(_ sender: Any) {
		cgiImage.isHidden = !cgiImage.isHidden
	}

	override func viewDidLoad() {
		titleView.delegate = self // use the 'overwritten' funcs and not the basics in delegate!
		descriptionView.delegate = self
		titleView.tag = 1
		descriptionView.tag = 2

		setTitleView()
		setDescriptionView()
		setImageView()
	}

	func setTitleView() {
		titleView.textContainer.maximumNumberOfLines = 1
		titleView.isScrollEnabled = false
		titleView.textContainer.lineBreakMode = .byTruncatingTail
		setPlaceholder(withText: "Title...", label: titleLable, view: titleView)
	}
	
	func setDescriptionView() {
		descriptionView.textContainer.maximumNumberOfLines = 3
		descriptionView.isScrollEnabled = false
		descriptionView.textContainer.lineBreakMode = .byTruncatingTail
		setPlaceholder(withText: "Description...", label: descriptionLabel, view: descriptionView)
	}
	
	func setImageView() {
		cgiImage.isUserInteractionEnabled 	= false
		cgiImage.layer.borderColor 	= CGColor(red: 0, green: 0, blue: 0, alpha: 0.8)
		cgiImage.layer.borderWidth 	= 1.0
	}
	
	func setPlaceholder(withText: String, label: UILabel, view: UITextView) {
		label.text = withText
		label.font = UIFont.boldSystemFont(ofSize: 13.0)
		label.sizeToFit()
		label.textColor = .white
		label.isHidden = false
	}
}

extension ViewController: UITextViewDelegate {
	func textViewDidBeginEditing(_ textView: UITextView) {	// when tapped
		print("TextViewStarted Editing")
		if textView.tag == 1 {
			titleLable.isHidden = true
		}
		else {
			descriptionLabel.isHidden = true
		}
		
//		if titleLable.isHidden == true {
		//titleLable.isHidden = !titleView.text.isEmpty
//		}
//
//		if descriptionLabel.isHidden == true {
//			descriptionLabel.isHidden = !descriptionView.text.isEmpty
//		}
		
	}
	
	func textViewDidEndEditing(_ textView: UITextView) {
		print("DidEnd Editing")
		if textView.tag == 1 {
			titleLable.isHidden = !titleView.text.isEmpty
		}
		else {
			descriptionLabel.isHidden = !descriptionView.text.isEmpty
		}
	}
}


	
	
	

//	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//			if titleView.text?.isEmpty != nil {
//				titleLable.isHidden = !titleView.text.isEmpty
//			}
//		super.touchesBegan(touches, with: event)
//		}
//	}

