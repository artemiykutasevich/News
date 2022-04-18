//
//  NewsController.swift
//  News
//
//  Created by Artem Kutasevich on 4.04.22.
//

import Foundation
import Alamofire

class NewsController {
    var view: NewsViewController?
    var model: NewsModel?
    
    let notifacation = Notification(name: Notification.Name("updateTable"), object: nil, userInfo: nil)
    
    init(view: NewsViewController, model: NewsModel) {
        self.view = view
        self.model = model
        
        view.controller = self
        model.controller = self
        
        makeRequest()
    }
    
    func makeRequest() {
        AF
            .request("https://newsapi.org/v2/everything?q=tesla&from=\(getDate())&sortBy=publishedAt&apiKey=7b5b06b3411141ee9726f74c6aa24a8b")
            .response(completionHandler: { response in
                switch response.result {
                case .success(let data):
                    let newsline = try! JSONDecoder().decode(News.self, from: data!)
                    self.model?.newsline = newsline.articles
                    NotificationCenter.default.post(self.notifacation)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            })
    }
    
    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: Date())
    }
    
    func getArticle(with indexPath: IndexPath) -> Article {
        return model!.newsline[indexPath.row]
    }
}
