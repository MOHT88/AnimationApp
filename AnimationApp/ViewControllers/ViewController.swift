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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runAnimation(_ sender: Any) {
        
        animationView.animation = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        animationView.curve = Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        animationView.force = Double.random(in: 0.01...1.0)
        animationView.duration = Double.random(in: 1.0...3.0)
        animationView.delay = Double.random(in: 0.10...0.50)
        animationView.animate()
        
        animationInfoLabel.text = """
        preset: \(animationView.animation)
        curve: \(animationView.curve)
        force: \(String(format: "%.2f", animationView.force))
        duration: \(String(format: "%.2f", animationView.duration))
        delay: \(String(format: "%.2f", animationView.delay))
        """
        startButton.setTitle("Run " + animationView.animation, for: .normal)
    }
    
}

