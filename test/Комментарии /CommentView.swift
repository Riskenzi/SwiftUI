//
//  CommentView.swift
//  test
//
//  Created by Валерий Мельников on 10.06.2019.
//  Copyright © 2019 Valerii Melnykov. All rights reserved.
//

import SwiftUI

struct CommentView : View {
    var user : UserResponse
    var body: some View {
        HStack(spacing: 8.0) {
                Image(user.profileImage)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
 
        
          
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.title)
                HStack {
                    Text(user.email)
                        .font(.subheadline)
                    Spacer()
                    Image("like")
                    Text(user.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

#if DEBUG
struct CommentView_Previews : PreviewProvider {
    static var previews: some View {
        CommentView(user: userResponse[2])
    }
}
#endif
