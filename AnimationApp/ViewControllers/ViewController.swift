//
//  ViewController.swift
//  AnimationApp
//
//  Created by Сергей Иванов on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var animationInfoLabel: UILabel!
    
    var animation = RandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation.runRandomAnimation()
        showAnimationInfo()
    }

    @IBAction func runAnimation(_ sender: Any) {
        
        animationView.animation = animation.title
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        showAnimationInfo()
        animation.runRandomAnimation()
        
        startButton.setTitle("Run " + animation.title, for: .normal)
    }
    
    private func showAnimationInfo() {
        animationInfoLabel.text = """
            preset: \(animation.title)
            curve: \(animation.curve)
            force: \(String(format: "%.2f", animationView.force))
            duration: \(String(format: "%.2f", animationView.duration))
            delay: \(String(format: "%.2f", animationView.delay))
        """
    }
}

