//
//  Animation.swift
//  RandomAnimation
//
//  Created by Aleksandr on 06.04.2022.
//

import Foundation

struct Animation  {
    let preset: Preset
    let curve: Curve
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getRandomAnimation() -> Animation {
        let randomAnimation = Animation(
            preset: Preset.allCases.randomElement() ?? Preset.fadeIn ,
            curve: Curve.allCases.randomElement() ?? Curve.easeIn ,
            force: round(Float.random(in: 0.5...1.5) * 100) / 100.0,
            duration: round(Float.random(in: 1...2) * 100) / 100.0,
            delay: round(Float.random(in: 0...0.5) * 100) / 100.0
        )
        return randomAnimation
    }
}


enum Preset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

enum Curve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}

