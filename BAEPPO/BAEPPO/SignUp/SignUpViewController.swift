//
//  SignUpViewController.swift
//  BAEPPO
//
//  Created by Ethan on 2021/02/24.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupTextField() {
        self.idTextField.delegate = self
        self.passwordTextField.delegate = self
        self.passwordConfirmTextField.delegate = self
        self.universityTextField.delegate = self
    }

    @IBAction private func didTapUniversityButton(_ sender: UIButton) {

    }

    @IBAction private func didTapCloseButton(_ sender: UIButton) {

    }

    @IBAction private func didTapConfirmButton(_ sender: UIButton) {

    }

    @IBOutlet private weak var idTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var passwordConfirmTextField: UITextField!
    @IBOutlet private weak var universityTextField: UITextField!
    @IBOutlet private weak var universityButton: UIButton!
    @IBOutlet private weak var confirmButton: UIButton!

}

extension SignUpViewController: UITextFieldDelegate {

}
