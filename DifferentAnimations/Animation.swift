//
//  Animation.swift
//  DifferentAnimations
//
//  Created by Виталий Бобрик on 10.04.22.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        present: \(name)
        curve: \(curve)
        force: \(String(format: "%02f",force))
        duration: \(String(format: "%02f",duration))
        delay: \(String(format: "%02f",delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation (name: DataManager.shared.animation.randomElement()?.rawValue ?? "sliderLeft",
                   curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                   force: Double.random(in: 1...1.5),
                   duration: Double.random(in: 0.8...1.6),
                   delay: 0.3)
    }
}
