//
//  ViewController.swift
//  DifferentAnimations
//
//  Created by Виталий Бобрик on 6.04.22.
//

import Spring
import Darwin

class ViewController: UIViewController {

    
    @IBOutlet weak var animationViewController: SpringView!
    
    @IBOutlet var resultPresentLabel: UILabel!
    @IBOutlet var resultCurveLabel: UILabel!
    @IBOutlet var resultForseLabel: UILabel!
    @IBOutlet var resultDurationLabel: UILabel!
    @IBOutlet var resultDelayLabel: UILabel!
    
    @IBOutlet var animationButton: UIButton!
    
    private let animationsPreset = Spring.AnimationPreset.allCases
    private let animationCurves = Spring.AnimationCurve.allCases
    
    private var animation = ""
    private var curves = ""
    private var duration = 0.00
    private var force = 0.00
    private var delay = 0.00
    
    private var hasAnimation = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        letAnimation()
    }
    
    @IBAction func runAnimationButton() {
        
        letAnimation()
        
        animationViewController.animation = animation
        animationViewController.curve = curves
        animationViewController.duration = duration
        animationViewController.force = force
        animationViewController.delay = delay
        
        animationViewController.animate()
     
        letNextAnimation()
        
    }
    
    private func letAnimation() {
       
        setNameButton()
        
        if !hasAnimation {
            guard let animation_ = animationsPreset.randomElement()?.rawValue as? String else {return}
            animation = animation_
            hasAnimation.toggle()
        }
        
        guard let curves_ = animationCurves.randomElement()?.rawValue as? String else {return}

        curves = curves_
        duration = Double.random(in: 0.01...2.00)
        force = Double.random(in: 0.01...1.00)
        delay = Double.random(in: 0.01...1.00)
        
        resultPresentLabel.text = animation
        resultCurveLabel.text = curves
        resultDurationLabel.text = String(duration)
        resultForseLabel.text = String(force)
        resultDelayLabel.text = String(delay)
        
       

    }
    
    private func letNextAnimation() {
        guard let animation_ = animationsPreset.randomElement()?.rawValue as? String else {return}
        animation = animation_
        setNameButton()
    }
    
    private func setNameButton() {
            animationButton.setTitle("Run \(animation)", for: .normal)
    }
}
