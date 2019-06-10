//
//  ContentView2.swift
//  test
//
//  Created by Валерий Мельников on 10.06.2019.
//  Copyright © 2019 Valerii Melnykov. All rights reserved.
//

import SwiftUI
import Combine
struct ContentView2 : View {
    var user : UserResponse
    var body: some View {
        
        NavigationView{
            List{
                Text("Users")
                ScrollView{
                    VStack(alignment: .leading)
                    {
                        HStack(){
                           
                            
                            ForEach(userResponse.identified(by: \.self)) {
                                user in  NavigationButton(destination: DetailView(name: "name")){
                                    GroupView(user: user)
                                }
                            }
                            //NavigationButton
                        }
                    }
                    }.frame(height: 180)
                
                ForEach(userResponse.identified(by: \.self)) {
                    user in Cell(user: user)
                }
                
                }.navigationBarTitle(Text("Peoples"))
        }
    }
    
    struct DetailView : View {
        var name : String
        var body: some View {
            Text(name)
        }
    }
    
    struct GroupView : View {
        var user : UserResponse
        var body: some View
        {   
            VStack(alignment: .leading){
                Image(user.profileImage)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                
                Text(user.name).color(.primary).lineLimit(nil)
                    .padding(.leading, 0)
                
                }.frame(width: 120 , height: 170).padding(.leading,0)
        }
    }
}

#if DEBUG
struct ContentView2_Previews : PreviewProvider {
    static var previews: some View {
        ContentView2(user: userResponse[0])
    }
}
#endif
