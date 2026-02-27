//
//  primera_pantalla.swift
//  A02_3-Interfaces
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

struct primera_pantalla: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(Color(Color("background_color")))
                .ignoresSafeArea()
            
            
            VStack {
                // Menu Superior Estilo Fallout 4
                HStack (spacing: 20) {
                    Text("STAT")
                        .padding()
                        .background(Color(Color("border_color")))
                        .cornerRadius(15)
                        .fontWeight(.bold)
                    Text("INV")
                    Text("DATA")
                    Text("MAP")
                    Text("RADIO")
                }
                .font(.system(.headline, design: .monospaced))
                .foregroundStyle(Color(Color("text_color")))
                .padding(.top)
                
                Divider()
                    .background(Color(Color("pipboy_green")))
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("HP 240 / 240")
                        .font(.system(size: 24, design: .monospaced))
                    Text("LEVEL 15")
                        .font(.system(size: 24, design: .monospaced))
                }
                .foregroundStyle(Color(Color("text_color")))
                .shadow(color: Color("pipboy_green"), radius: 6)
                
                Spacer()
            }
        }
    }
}

#Preview {
    primera_pantalla()
}
