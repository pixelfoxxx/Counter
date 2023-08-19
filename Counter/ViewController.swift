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
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterView.text = "\(count)"

    }

    @IBAction func plusButtonTap(_ sender: Any) {
        
        count += 1
        counterView.text = "\(count)"
        
    }
    
    @IBAction func minusButtonTap(_ sender: Any) {
        
        if count <= 0 {
            count = 0
        } else {
            count -= 1
            counterView.text = "\(count)"
        }
    }
}

