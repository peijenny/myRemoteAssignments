//
//  ViewController.swift
//  myStationApp
//
//  Created by Jenny Hung on 2022/1/25.
//

import UIKit
import Foundation
import _Concurrency

class ViewController: UIViewController {

    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    // json URL
    let url: URL = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Task -> unit of asynchronous work
        Task {
            let urlString = try String(contentsOf: url)  // 取 Json 內容
            let station = await getData(urlString)

            stationID.text = station["stationID"] as? String  // 取 stationID 內容
            stationName.text = station["stationName"] as? String   // 取 stationName 內容
            stationAddress.text = station["stationAddress"] as? String  // 取 stationAddress 內容
        }

        
    }
    
    // func name() async -> type { }
    func getData(_ jsonString: String) async -> NSDictionary {
        let jsonData: Data = jsonString.data(using: .utf8)!       // 使用 .utf8 格式
        let addressDict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if addressDict != nil {
            return addressDict as! NSDictionary
        }
        return NSDictionary()
    }
    



}

