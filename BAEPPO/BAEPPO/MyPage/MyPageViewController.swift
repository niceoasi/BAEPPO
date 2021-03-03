//
//  MyPageViewController.swift
//  BAEPPO
//
//  Created by Ethan on 2021/02/24.
//

import UIKit

class MyPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }


    @IBOutlet private weak var tableView: UITableView!

}

extension MyPageViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Menu.allCases.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MyPageTableViewCell.identifier, for: indexPath) as? MyPageTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }

}

extension MyPageViewController: UITableViewDelegate {

}

extension MyPageViewController {

    enum Menu: String, CaseIterable {
        case agreement
        case author
        case version
        case logout
    }

}
