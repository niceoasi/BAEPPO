//
//  LoginViewController.swift
//  BAEPPO
//
//  Created by Ethan on 2021/02/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupViews()
    }

    private func setupViews() {
        self.setupTextField()
    }

    private func setupTextField() {
        self.idTextField.delegate = self
        self.passwordTextField.delegate = self
    }

    @IBAction private func didTapLoginButton(_ sender: UIButton) {
    }

    @IBOutlet private weak var idTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!

}

extension LoginViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool { true }
    func textFieldShouldClear(_ textField: UITextField) -> Bool { true }

    func textFieldDidBeginEditing(_ textField: UITextField) {
    }

}
