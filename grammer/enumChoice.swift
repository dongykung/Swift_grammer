//
//  enumChoice.swift
//  grammer
//
//  Created by 김동경 on 2024/01/09.
//

import SwiftUI

struct enumChoice: View {
    
    var direction : Direction = .east
    var member : Member = .paul
    var menu : Restaurant = .pasta
    
    var body: some View {
        Text("방향은 \(direction.rawValue) 입니다")
        Text("name is \(member.rawValue)")
        Text("food is \(menu.rawValue)")
    }
}

enum Member : String {
    case leeo = "leeo", dongkyung = "dongkyung", paul = "paul", koko = "koko"
}

enum Restaurant : String{
    case pasta = "pasta"
    case raman = "raman"
}

enum Direction : String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    enumChoice()
}
