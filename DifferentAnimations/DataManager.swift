//
//  DataManager.swift
//  DifferentAnimations
//
//  Created by Виталий Бобрик on 10.04.22.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animation = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
