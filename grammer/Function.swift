//
//  Function.swift
//  grammer
//
//  Created by 김동경 on 2024/01/08.
//

import SwiftUI

struct Function: View {
    @State var inputNumber : Int = 4
    
    var body: some View {
        VStack{
            Text("InputNumber is \(inputNumber)")
            Button(action: {
                inputNumber = plusFive(test: inputNumber)
            }
                   , label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
    func plusFive(test input : Int) -> Int {
       return input+5
    }
}

#Preview {
    Function()
}
