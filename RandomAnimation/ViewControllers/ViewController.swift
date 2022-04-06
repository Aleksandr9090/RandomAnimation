//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Aleksandr on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var animation = Animation(preset: .fadeIn, curve: .easeIn, force: 1.5, duration: 2, delay: 0.3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = "\(animation.preset)"
        springAnimationView.curve = "\(animation.curve)"
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.animate()
        updateView()

        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension ViewController {
    private func updateView() {
        presentLabel.text = "present: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
    }
}
