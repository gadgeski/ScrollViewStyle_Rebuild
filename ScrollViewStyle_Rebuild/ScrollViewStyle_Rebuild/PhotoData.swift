//
//  PhotoData.swift
//  ScrollViewStyle_Rebuild
//
//  Created by Dev Tech on 2025/04/25.
//

import Foundation

// 写真データを構造体で定義
struct PhotoData: Identifiable {
    var id = UUID()
    var imageName:String
    var title:String
}
// 構造体PhotoData の写真データが入った配列を作成
var photoArray = [
    PhotoData(imageName:"IMG_042440", title:"幻想的な風景"),
    PhotoData(imageName:"IMG_042441", title:"めっちゃ幻想的な風景"),
    PhotoData(imageName:"IMG_042442", title:"すんげー幻想的な風景"),
    PhotoData(imageName:"IMG_042443", title:"とっても幻想的な風景"),
    PhotoData(imageName:"IMG_042444", title:"どえらい幻想的な風景"),
    PhotoData(imageName:"IMG_042445", title:"ホントに幻想的な風景"),
]
