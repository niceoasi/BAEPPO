//
//  ReviewListViewController.swift
//  BAEPPO
//
//  Created by Ethan on 2021/02/24.
//

import UIKit

class ReviewListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
    }

    private func setupTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    @IBOutlet private weak var tableView: UITableView!

    private let mockData: [MockReviewData] = Array(repeating: MockReviewData(), count: 10)

}

extension ReviewListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.mockData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ReviewListTableViewCell.identifier, for: indexPath) as? ReviewListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }

}

extension ReviewListViewController: UITableViewDelegate {

}

// Mock
struct MockReviewData {

}
