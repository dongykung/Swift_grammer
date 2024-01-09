//
//  Elevator.swift
//  grammer
//
//  Created by 김동경 on 2024/01/08.
//

import SwiftUI

struct Elevator: View {
    @State var level : Int = 1
    @State var myElevator=ElevatorStruct()
    var body: some View {
        VStack{
            Text("층수 \(myElevator.level)")
            
            HStack{
                Button("아래로") {
                     myElevator.goDown()
                }
                Button("위로") {
                     myElevator.goUp()
                }
            }
            
        }
    }
    func goDown(_ level: Int)->Int{
        return level-1
    }
    func goUp(_ level:Int)->Int{
        return level+1
    }
}

struct ElevatorStruct{
    //층 수를 표시해주는 디스플레이
    //위,아래로 올라갈 수 있어야함
    var level : Int = 1
    
    mutating func goDown(){
        level = level-1
    }
    mutating func goUp(){
         level = level+1
    }
    
}

#Preview {
    Elevator()
}
