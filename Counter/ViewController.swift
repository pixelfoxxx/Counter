//
//  ViewController.swift
//  Counter
//
//  Created by Юрий Клеймёнов on 19/08/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var changeHistory: UITextView!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterView.text = "\(count)"
        changeHistory.text = "История изменений:\n"
        changeHistory.isEditable = false
    }

    @IBAction func plusButtonTap(_ sender: Any) {
        count += 1
        counterView.text = "\(count)"
        updateTextView(with: "Значение изменено на +1")
    }
    
    @IBAction func minusButtonTap(_ sender: Any) {
        
        if count <= 0 {
            count = 0
            updateTextView(with: "Попытка уменьшить значение счётчика ниже 0")
        } else {
            count -= 1
            counterView.text = "\(count)"
            updateTextView(with: "Значение изменено на -1")
        }
        
    }
    
    @IBAction func refreshButtonTap(_ sender: Any) {
        count = 0
        counterView.text = "\(count)"
        updateTextView(with: "Значение сброшено")
    }
    
    func updateTextView(with message: String) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
            let formattedDate = dateFormatter.string(from: Date())
            
            let currentText = changeHistory.text ?? ""
            let newText = "\(currentText)\n[\(formattedDate)]: \(message)"
            
            changeHistory.text = newText
            
            let range = NSMakeRange(newText.count - 1, 1)
            changeHistory.scrollRangeToVisible(range)
        }
    
}

