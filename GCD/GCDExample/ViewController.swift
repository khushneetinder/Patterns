//
//  ViewController.swift
//  GCDExample
//
//  Created by Khushneet Inder Singh on 03/01/17.
//  Copyright © 2017 Khushneet Inder Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pv: UIProgressView!
    @IBAction func ClickedStart(_ sender: Any) {
        label.text = "0%"
        self.counter = 0
        let queue = DispatchQueue(label: "task", attributes: .concurrent)
        
        for _ in 0..<100 {
            
            queue.async {
                sleep(1)
                DispatchQueue.main.async {
                    self.counter += 1
                    return
                }
            }
        }
    }
    
    var counter:Int = 0 {
        didSet {
            let fractionalProgress = Float(counter) / 100.0
            let animated = counter != 0
            
            pv.setProgress(fractionalProgress, animated: animated)
            label.text = ("\(counter)%")
        }
    }
    
    override func awakeFromNib() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

func doLongAsyncTaskInSerialQueue() {
    let serialQueue = DispatchQueue(label: "com.queue.Serial")
    for i in 1...5 {
        serialQueue.async {
            for _ in 0..<10 {
                sleep(1)
            }
            //                let imgURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            //                let _ = try! Data(contentsOf: imgURL)
            print("\(i) completed downloading")
        }
        print("\(i) executing")
    }
}

func doLongSyncTaskInSerialQueue() {
    let serialQueue = DispatchQueue(label: "com.queue.Serial")
    for i in 1...5 {
        serialQueue.sync {
            for _ in 0..<10 {
                sleep(1)
            }
            //                let imgURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            //                let _ = try! Data(contentsOf: imgURL)
            print("\(i) completed downloading")
        }
    }
}

func doLongASyncTaskInConcurrentQueue() {
    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
    for i in 1...5 {
        concurrentQueue.async {
            for _ in 0..<10 {
                sleep(1)
            }
            print("\(i) completed downloading")
        }
        print("\(i) executing")
    }
}

func doLongSyncTaskInConcurrentQueue() {
    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
    for i in 1...5 {
        concurrentQueue.sync {
            for _ in 0..<10 {
                sleep(1)
            }
            print("\(i) completed downloading")
        }
        print("\(i) executed")
    }
}
