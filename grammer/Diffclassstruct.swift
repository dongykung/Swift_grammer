//
//  Diffclassstruct.swift
//  grammer
//
//  Created by 김동경 on 2024/01/09.
//

import SwiftUI

struct Diffclassstruct: View {
    let mycar = Car(name: "k5", owner: "dongkyung")
    @ObservedObject var kar = Kar(name: "k52", owner:  "dongkyung2")
    @State var name : String = ""
    var body: some View {
        Text("\(kar.name) 의 주인은 \(kar.owner)")
        TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $name)
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            name = "dongkyung"
            let broCar = kar
            broCar.name="brothercar"
            broCar.owner="brother"
            kar.sayHi()
           
        }
        
    }
}

struct Car{
    var name : String
    var owner : String
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class Kar:ObservableObject{
    @Published var name:String
    @Published var owner:String
    
    func sayHi(){
        print("hi \(owner)")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diffclassstruct()
}
