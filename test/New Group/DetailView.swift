//
//  DetailView.swift
//  test
//
//  Created by Валерий Мельников on 12.06.2019.
//  Copyright © 2019 Valerii Melnykov. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    var user : UserResponse
    var body: some View {
        List{
            VStack(spacing: 5.0) {
                Image(user.profileImage)
                    .renderingMode(.original)
                    .resizable()
                    .padding([.top, .leading, .trailing], 15.0)
                    .clipShape(Circle())
                    .frame(width: 250, height:250)
                HStack {
                    Text("User name:")
                    
                    Text(user.name)
                    }
                    .padding(.top)
                
            }
            
            
        }
    }
}
#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(user: userResponse[1])
    }
}
#endif
