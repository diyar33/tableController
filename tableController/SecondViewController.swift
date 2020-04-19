//
//  SecondViewController.swift
//  tableController
//
//  Created by Ahmet Tarık Sürücü on 19.04.2020.
//  Copyright © 2020 Diyar Aydın. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var detailShow: UILabel!
    @IBOutlet weak var nameShow: UILabel!
    @IBOutlet weak var ımageShow: UIImageView!
    var name:detay?
    var gorev=""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameShow.text=name?.isim
        detailShow.text=name?.cinsiyet
    }


}
