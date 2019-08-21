//
//  ViewController.swift
//  AnimationAPP
//
//  Created by John Heifetz on 20/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet var springView: SpringView!
    @IBOutlet var viewLabel: UILabel!
    @IBOutlet var springButton: SpringButton!
    
    private var countOfTap = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springView.animate()
        
    }

    @IBAction func springButtonTapped(_ sender: SpringButton) {
        switch countOfTap {
        case 0:
            springView.animation = "wobble"
            springView.curve = "easyOut"
            springView.force = 5.0
            springView.duration = 3.0
            springView.rotate = 3.0
            springView.animate()
            viewLabel.text = "springView.animation = 'wobble'\n springView.curve = 'easyOut'\n springView.force = 5.0\n springView.duration = 3.0\n springView.rotate = 3.0"
            springButton.setTitle("Wooble Animation", for: .normal)
            springView.backgroundColor = .magenta
            countOfTap += 1
        case 1:
            springView.animation = "fadeIn"
            springView.curve = "easyInQuad"
            springView.force = 2.0
            springView.duration = 3.5
            springView.rotate = 4.0
            springView.animate()
            viewLabel.text = "springView.animation = 'fadeIn'\n springView.curve = 'easyInQuad'\n springView.force = 2.0\n springView.duration = 3.5\n springView.rotate = 4.0"
            springButton.setTitle("FadeIn Animation", for: .normal)
            springView.backgroundColor = .yellow
            countOfTap -= 1
        default:
            print("ERROR")
        }
    }
}
