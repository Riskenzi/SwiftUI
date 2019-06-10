//
//  Cell.swift
//  test
//
//  Created by Валерий Мельников on 10.06.2019.
//  Copyright © 2019 Valerii Melnykov. All rights reserved.
//

import SwiftUI

struct Cell : View {
    
    var user : UserResponse
    
    var body: some View {
        VStack(spacing: 16.0){
            CommentView(user: user)
            Text(user.text)
                .lineLimit(nil)
            }.padding()
    }
}

#if DEBUG
struct Cell_Previews : PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
#endif
