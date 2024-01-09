//
//  SwitchPractice.swift
//  grammer
//
//  Created by 김동경 on 2024/01/09.
//

import SwiftUI

struct SwitchPractice: View {
    
    @State var myDirection : Direction2 = .south
    
    var body: some View {
        VStack{
            switch myDirection {
            case .north:
                Text("\(myDirection.rawValue)은 추워요")
            case .west:
                Text("\(myDirection.rawValue)쪽은 석양이 이뻐요")
            case .east:
                Text("\(myDirection.rawValue)바다가 좋아요")
            case .south:
                Text("\(myDirection.rawValue) 사우스코리아")
            default : Text("myway")
            }
            Button("돌리기") {
                switch myDirection {
                case .north,.west:
                    myDirection = .east
                case .east:
                    myDirection = .south
                case .south : myDirection = .north
                default : myDirection = .myway
                }
            }
        }
    }
}


enum Direction2 : String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
    case myway = "myway"
}


#Preview {
    SwitchPractice()
}
