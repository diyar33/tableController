//
//  detay.swift
//  tableController
//
//  Created by Ahmet Tarık Sürücü on 19.04.2020.
//  Copyright © 2020 Diyar Aydın. All rights reserved.
//

import Foundation
enum gorevi {
    case erkekkardes
    case KızKardes
    case Baba
    case Anne
}
class detay {
    var isim:String
    var yas :Int
    var cinsiyet:String
    var gorevi:gorevi
    init(isim:String,yas:Int,cinsiyet:String,gorevi:gorevi) {
        self.isim=isim
        self.yas=yas
        self.cinsiyet=cinsiyet
        self.gorevi=gorevi
    }
    
}
