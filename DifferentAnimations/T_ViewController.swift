//
//  T_ViewController.swift
//  DifferentAnimations
//
//  Created by Виталий Бобрик on 10.04.22.
//

import Spring

class T_ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func animationButtonPresent(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}
