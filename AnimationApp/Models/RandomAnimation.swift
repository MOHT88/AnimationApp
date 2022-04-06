//
//  RandomAnimation.swift
//  AnimationApp
//
//  Created by Сергей Иванов on 06.04.2022.
//

import Spring

struct RandomAnimation {
    var title = ""
    var curve = ""
    var force = 0.0
    var duration = 0.0
    var delay = 0.0
    
    mutating func runRandomAnimation() {
        title = Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        curve = Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        force = Double.random(in: 0.01...1.0)
        duration = Double.random(in: 1.0...3.0)
        delay = Double.random(in: 0.10...0.50)
    }
    
}


