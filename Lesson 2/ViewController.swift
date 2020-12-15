//
//  ViewController.swift
//  Lesson 2
//
//  Created by Роман Антоняк on 15.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var imagesArray = [#imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "5")]
    var postText = ["Ку-ку", "Лох", "Не хочу в школу", "пакеда"]
    var dateString = ""{
        willSet{
            dateLabel.text = newValue
        }
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postLabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postLabelView.delegate = self
        postLabelView.dataSource = self
    
        let currentDate = Date()
        let dateFormetter = DateFormatter()
        dateFormetter.dateFormat = "dd.MM.yyyy hh:mm:ss"
        
        dateString = dateFormetter.string(from: currentDate)
        
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        cell.postImageView.image = imagesArray[indexPath.row]
        cell.postImageView.layer.cornerRadius = 10
        cell.postTextLabel.text = postText[indexPath.row]
        return cell
    }
    
    
}
