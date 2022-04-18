//
//  NewsViewController.swift
//  News
//
//  Created by Artem Kutasevich on 4.04.22.
//

import UIKit
import SnapKit

class NewsViewController: UIViewController {
    var controller: NewsController?
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createModule()
        startObserve()
        
        tableView = UITableView(frame: .zero)
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: NewsTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 260
    }
    
    func createModule() {
        let view = self
        let model = NewsModel()
        let controller = NewsController(view: view, model: model)
    }
    
    func configViewController() {
        tableView.snp.makeConstraints {
            $0.leading.equalTo(view.snp.leading)
            $0.top.equalTo(view.snp.top)
            $0.trailing.equalTo(view.snp.trailing)
            $0.bottom.equalTo(view.snp.bottom)
        }
    }
    
    func startObserve() {
        NotificationCenter.default.addObserver(self, selector: #selector(tableReload), name: Notification.Name("updateTable"), object: nil)
    }
    
    @objc func tableReload() {
        self.tableView.reloadData()
    }
}

extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller?.model?.newsline.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
        cell.pictureImageView.image = UIImage(systemName: "mic")!
        cell.setUpCell(from: (controller?.getArticle(with: indexPath))!)
        return cell
    }
}

extension NewsViewController: UITableViewDelegate {}
