//
//  ContentView.swift
//  test
//
//  Created by Валерий Мельников on 10.06.2019.
//  Copyright © 2019 Valerii Melnykov. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    
    var body: some View {
        NavigationView{
            List (userResponse){ user in
                Cell(user: user)
                }
                .navigationBarTitle(Text("User Comment"))
        }
        
    }
}




#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
