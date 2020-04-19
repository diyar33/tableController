//
//  ViewController.swift
//  tableController
//
//  Created by Ahmet Tarık Sürücü on 17.04.2020.
//  Copyright © 2020 Diyar Aydın. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    

    var aileArray=[detay]()
    var selectedIndex:detay?

    override func viewDidLoad() {
        super.viewDidLoad()
        let diyar=detay(isim: "Diyar", yas: 30, cinsiyet: "Erkek", gorevi:.Baba)
        let yusra=detay(isim: "Yusra", yas: 25, cinsiyet: "Kız", gorevi: .Anne)
        let jelya=detay(isim: "jelya", yas: 17, cinsiyet: "Kız", gorevi: .KızKardes)
        let batu=detay(isim: "Batu", yas: 25, cinsiyet: "erkek", gorevi: .erkekkardes)
        aileArray=[diyar,batu,yusra,jelya]
        tableView.delegate=self
        tableView.dataSource=self
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text=aileArray[indexPath.row].isim
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aileArray.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex=aileArray[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="detailSegue" {
            let destinoSegue=segue.destination as! SecondViewController
            destinoSegue.name=selectedIndex
        }
    }
    /*func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        <#code#>
    }*/


}

