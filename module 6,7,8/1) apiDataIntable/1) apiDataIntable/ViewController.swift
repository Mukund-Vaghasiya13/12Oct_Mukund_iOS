//
//  ViewController.swift
//  1) apiDataIntable
//
//  Created by Mukund vaghasiya  on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var CoustomTabledata: UITableView!
    
    var arr = [DisplayData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://restcountries.com/v3.1/all")
        
        URLSession.shared.dataTask(with: url!) { [self] (data, response,error) in
            if error == nil && data != nil{
                do{
                    self.arr = try JSONDecoder().decode([DisplayData].self, from: data!)
                    DispatchQueue.main.async {
                        self.CoustomTabledata.reloadData()
                    }
                }
                catch{
                    print("Error:\(error.localizedDescription)")
                }
                
            }
            else{
                print("Empety data")
            }
        }.resume()
        
        // table code
        
        CoustomTabledata.delegate = self
        CoustomTabledata.dataSource = self
       
        
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celll = CoustomTabledata.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        celll.region.text = arr[indexPath.row].region!
        celll.Capital.text = arr[indexPath.row].subregion!
        celll.contNmae.text = arr[indexPath.row].name?.common
        celll.web.load(URLRequest(url: URL(string: (arr[indexPath.row].flags?.png)!)!))
        return celll
    }
    
    
}
