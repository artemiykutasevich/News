//
//  NewsTableViewCell.swift
//  News
//
//  Created by Artem Kutasevich on 9.04.22.
//

import UIKit
import SnapKit

class NewsTableViewCell: UITableViewCell {
    static let identifier = "NewsTableViewCell"
    
    var pictureImageView: UIImageView!
    var titleLabel: UILabel!
    var bodyLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        pictureImageView = UIImageView()
        self.contentView.addSubview(pictureImageView)
        pictureImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.top.equalToSuperview().inset(16)
            $0.height.equalTo(160)
        }
        
        titleLabel = UILabel()
        titleLabel.textAlignment = .center
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(pictureImageView.snp.bottom).offset(17)
            $0.height.equalTo(20)
        }
        
        bodyLabel = UILabel()
        bodyLabel.textAlignment = .center
        self.contentView.addSubview(bodyLabel)
        bodyLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(12)
            $0.bottom.equalToSuperview().inset(16)
        }
    }
    
    func setUpCell(from: Article) {
        titleLabel.text = from.title
        bodyLabel.text = from.articleDescription
    }
}
