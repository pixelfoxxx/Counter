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
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterView.text = "\(count)"

    }

    @IBAction func plusButtonTap(_ sender: Any) {
        
        count += 1
        counterView.text = "\(count)"
        
    }
    
}

