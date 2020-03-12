//
//  ViewController.swift
//  StartupPerformance
//
//  Created by Raffi Senerol on 2020-03-11.
//  Copyright © 2020 Raffi Senerol. All rights reserved.
//

import UIKit
import MetricKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assert(writeToDisk(bytes: 10000000)) // 10MB
    }

    private func writeToDisk(bytes: Int) -> Bool {
        let directoryPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let path = directoryPath.appendingPathComponent(UUID().uuidString + ".txt")
        let data = NSData(bytes: malloc(bytes), length: bytes)
        return data.write(to: path, atomically: false)
    }
}

