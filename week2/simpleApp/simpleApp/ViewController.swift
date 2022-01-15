//
//  ViewController.swift
//  simpleApp
//
//  Created by Jenny Hung on 2022/1/15.
//

import UIKit

class ViewController: UIViewController {

    // 0 ~ 6 -> Label Random 的 7 組文字
    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    // 0 ~ 5 -> Background Random 的 6 個顏色
    let color = [UIColor.red, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.black]

    @IBOutlet weak var textLabel: UILabel!
    var textLabelRandom = 0
    var viewBackgroundRandom = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clickButton() {
        newRandom()
    }

    func newRandom() {   // 隨機 Label 文字 & BG 顏色
        //textLabel.backgroundColor = color[0]
        //view.backgroundColor = color[2]
        
        textLabelRandom = Int.random(in:0...6)
        textLabel.text = text[textLabelRandom]
        
        viewBackgroundRandom = Int.random(in: 0...5)
        view.backgroundColor = color[viewBackgroundRandom]
        
    }


}
