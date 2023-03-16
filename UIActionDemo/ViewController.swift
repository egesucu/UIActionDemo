//
//  ViewController.swift
//  UIActionDemo
//
//  Created by Ege Sucu on 16.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var actionSlider: UISlider!
    @IBOutlet weak var actionSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonAction()
        setupSliderAction()
        setupSwitchAction()
    }
    
    func setupButtonAction() {
        let buttonAction = UIAction { _ in
            print("Button Tapped")
        }
        actionButton.addAction(buttonAction, for: .touchUpInside)
    }
    
    func setupSliderAction() {
        let sliderAction = UIAction { [weak self] _ in
            guard let self else { return }
            print("Slider value changed. New value is", Int(actionSlider.value))
        }
        actionSlider.addAction(sliderAction, for: .valueChanged)
    }
    
    func setupSwitchAction() {
        let switchAction = UIAction { [weak self] _ in
            guard let self else { return }
            print("Switch Value changed, Switch is On? ", actionSwitch.isOn)
        }
        actionSwitch.addAction(switchAction, for: .valueChanged)
    }


}

