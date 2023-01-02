//
//  ViewController.swift
//  DataEntryScene
//
//  Created by Evangelos Spyromilios on 29.12.22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
	@IBOutlet var titleView: UITextView!
	@IBOutlet var descriptionView: UITextView!
	@IBOutlet var cgiImage: UIImageView!

	@IBAction func onSubmit(_ sender: Any) {
		cgiImage.isHidden = !cgiImage.isHidden
	}
	@IBOutlet weak var titleLable: UILabel!

	@IBOutlet weak var descriptionLabel: UILabel!
	override func viewDidLoad() {
		setTitleView()
		setDescriptionView()
		setImageView()
	}
//	titleView.delegate = self
//	delegate?.textViewDidChange(titleView)
	
	func textViewDidChange(_ textView: UITextView) {
		func textViewWithPlaceholderDidChange(_ textView: UITextView, label: UILabel) {
				label.isHidden = !textView.text.isEmpty
			// textView.shouldChangeText(in: , replacementText: )
			}
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
		label.isHidden = !view.text.isEmpty
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	func addPlaceholder() {
//		var placeholder = UILabel()
//		placeholder.text = "Add Description..."
//		placeholder.font = UIFont.init(name: "Lato-Regular", size: 14.0) ?? UIFont.boldSystemFont(ofSize: 13.0)
//		placeholder.sizeToFit()
//		descriptionView.addSubview(placeholder)
//		placeholder.frame.origin = CGPoint(x: 5, y: (descriptionView.font?.pointSize)! / 2)
//		placeholder.textColor = UIColor.white
//		placeholder.isHidden = !descriptionView.text.isEmpty
//	}

	
//	func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//		// get the current text, or use an empty string if that failed
//		let currentText = textView.text ?? ""
//
//		// attempt to read the range they are trying to change, or exit if we can't
//		guard let stringRange = Range(range, in: currentText) else { return false }
//
//		// add their new text to the existing text
//		let updatedText = currentText.replacingCharacters(in: stringRange, with: text)
//
//		// poplast() ?
//		// make sure the result is under 16 characters
//		if (textView.contentSize.height / textView.font!.lineHeight) > 3 {
//			return true
//		}
//		return false
//	}

}

//func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//	// get the current text, or use an empty string if that failed
//	let currentText = textView.text ?? ""
//
//	// attempt to read the range they are trying to change, or exit if we can't
//	guard let stringRange = Range(range, in: currentText) else { return false }
//
//	// add their new text to the existing text
//	let updatedText = currentText.replacingCharacters(in: stringRange, with: text)
//
//	// make sure the result is under 16 characters
//	return (textView.contentSize.height / textView.font!.lineHeight) > CGFloat(3)
//}


//extension UITextView {
//	func checkMaxNumberOfLines(view: UITextView, maxLines: Int) {
//		if (view.contentSize.height / view.font!.lineHeight) > CGFloat(maxLines) {
//			view.text.popLast()
//		}
//	}
//
//	func checkMaxNumberOfLines2(maxLines: Int) {
//		if (self.contentSize.height / self.font!.lineHeight) > CGFloat(maxLines) {
//			self.text.popLast()
//		}
//	}
//}


//extension UITextViewDelegate {
//	optional func textViewDidChange(_ textView: UITextView) {
//		placeholder.isHidden = !textView.text.isEmpty
//	}
//}
