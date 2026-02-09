//
//  FormInputView.swift
//  ZuzelGo
//
//  Created by Aleksandra Plichta on 08/02/2026.
//

import SwiftUI

struct FormInputView: View {
    @Binding var text: String
    var title: String
    var placeholder: String
    var isSecure: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .foregroundColor(Color.white)
                .fontWeight(.semibold)
                .font(.system(size: 16))
            
            if isSecure {
                SecureField("", text: $text, prompt: Text(placeholder)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14)))
            } else {
                TextField("", text: $text, prompt: Text(placeholder)
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14)))
                
            }
            Divider()
                .frame(height: 1)
                .background(Color.gray)
                
                
        }
    }
}

#Preview {
    FormInputView(text: .constant(""), title: "Email", placeholder: "przyklad@przyklad.pl")
}
