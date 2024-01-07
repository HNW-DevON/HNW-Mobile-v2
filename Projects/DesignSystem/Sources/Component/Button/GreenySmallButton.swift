//
//  AlimoSmallButton.swift
//  Alimo
//
//  Created by dgsw8th71 on 1/3/24.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import SwiftUI

struct GreenySmallButton: View {
    
    var text: String
    var buttonType: GreenyButtonType
    var callback: () -> Void
    
    init(_ text: String,
         buttonType: GreenyButtonType = .main,
         callback: @escaping () -> Void) {
        self.text = text
        self.buttonType = buttonType
        self.callback = callback
    }
    
    var body: some View {
        Button {
            callback()
        } label: {
            Text(text)
                .font(.label)
                .frame(maxHeight: 36)
                .padding(.horizontal, Size.large.rawValue)
                .foregroundStyle(buttonType.foregroundColor)
                .background(buttonType.backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: Size.large.rawValue))
        }
    }
}
