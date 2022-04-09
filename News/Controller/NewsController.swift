//
//  NewsController.swift
//  News
//
//  Created by Artem Kutasevich on 4.04.22.
//

import Foundation

class NewsController {
    var view: NewsViewController?
    var model: NewsModel?
    
    init(view: NewsViewController, model: NewsModel) {
        self.view = view
        self.model = model
        
        view.controller = self
        model.controller = self
    }
    
    func makeRequest() {
        DispatchQueue.main.async {
            let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-03-04&sortBy=publishedAt&apiKey=7b5b06b3411141ee9726f74c6aa24a8b")
            let task = URLSession.shared.dataTask(with: url!) { data, response, error in
                switch response {
                case .none:
                    print("data is empty")
                case .some(_):
                    let result = try? JSONDecoder().decode(News.self, from: data!)
                    self.model?.newsline = result
                }
            }
            task.resume()
        }
    }
}
