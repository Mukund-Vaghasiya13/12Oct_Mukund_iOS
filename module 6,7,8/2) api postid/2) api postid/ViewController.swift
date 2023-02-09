//
//  ViewController.swift
//  2) api postid
//
//  Created by Mukund vaghasiya  on 08/02/23.
//

import UIKit
struct getDataApi:Codable{
    var postId:Int?
    var name:String?
}


class ViewController: UIViewController {
    
    @IBOutlet weak var mytable: UITableView!
    // array of type getDataApi
    var arr = [getDataApi]()
    
    override func viewDidLoad() {
       super.viewDidLoad()
        let url = URL(string:"https://jsonplaceholder.typicode.com/comments?postId=1")
        if let url = url{
            URLSession.shared.dataTask(with: url, completionHandler: { (data,response,error) in
                print("Nice 🥲")
                    // json parsing
                guard let data = data,error == nil else{return}
                do{
                    self.arr = try JSONDecoder().decode([getDataApi].self, from: data)
                    
                    // printing data of api
                    DispatchQueue.main.async {
                        self.mytable.reloadData()
                    }
                }
                catch{
                    print("oho shit 💩")
                }
            }).resume()
            
        }
    }
    
}

// table coding

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "table", for: indexPath) as! TableViewCell
        cell.Name.text = arr[indexPath.row].name ?? "nil"
        if let id = arr[indexPath.row].postId{
            cell.Post.text = String(id)
        }else
        {
            cell.Post.text = "nil"
        }
        return cell
    }
    
}
