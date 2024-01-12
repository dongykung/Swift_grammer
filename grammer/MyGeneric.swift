//
//  MyGeneric.swift
//  grammer
//
//  Created by 김동경 on 2024/01/12.
//

import SwiftUI

struct MyGeneric: View {
    @State var inputNumber = ""
    @State var myStack = MyStack<Int>()
    //@State var myFloatStack = MyFloatStack()
    
    var body: some View {
        VStack{
            TextField("숫자를 입력해주세요", text: $inputNumber)
            Button("저장") {
                myStack.insertValue(Int(inputNumber) ?? 0)
            }
            Button("출력") {
                myStack.showData()
            }
        }
    }
}

struct MyStack<T>{
    var data : [T] = []
    
    mutating func insertValue(_ input : T){
        data.append(input)
    }
    
    func showData(){
        data.forEach{item in
            print(item)
        }
    }
}

struct MyFloatStack{
    var data : [Float] = []
    
    mutating func insertValue(_ input : Float){
        data.append(input)
    }
    
    func showData(){
        data.forEach{item in
            print(item)
        }
    }
}


#Preview {
    MyGeneric()
}
