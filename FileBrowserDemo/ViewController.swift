//
//  ViewController.swift
//  FileBrowserDemo
//
//  Created by RockerHX on 2018/10/11.
//  Copyright © 2018 RockerHX. All rights reserved.
//


import UIKit
import FileBrowser


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openButtonTaped() {
        let fileBrowser = FileBrowser(allowEditing: true)
        present(fileBrowser, animated: true, completion: nil)
    }


}

