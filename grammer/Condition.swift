//
//  Condition.swift
//  grammer
//
//  Created by 김동경 on 2024/01/08.
//

import SwiftUI

struct Condition: View {
    var hasLogginIn = false
    var count :Int = 7
    var body: some View {
        if(hasLogginIn){
            Text("로그아웃 하시겠습니까?")
        }else{
            Text("로그인 하시겠습니까?")
        }
    }
}

#Preview {
    Condition()
}
