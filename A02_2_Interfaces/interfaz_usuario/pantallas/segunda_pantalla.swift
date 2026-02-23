//
//  segunda_pantalla.swift
//  A2-Interfaces
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct ItemInv: Identifiable{
    let id = UUID() // Identificadores
    let Nombre: String
    let cantidad: Int
    let peso: Double
}

struct segunda_pantalla: View {
    
    let items = [
        ItemInv(Nombre: "Estimulante", cantidad: 5, peso: 0.1),
        ItemInv(Nombre: "Refresco Nuka-Cola", cantidad: 2, peso: 1.0),
        ItemInv(Nombre: "Pistola 10 mm", cantidad: 1, peso: 3.0),
        ItemInv(Nombre: "Gorra de Béisbol", cantidad: 5, peso: 0.1),
    ]
    
    var body: some View {
        
        
        ZStack{
            Rectangle()
                .foregroundStyle(Color(Color("background_color")))
                .ignoresSafeArea()
            
            
            VStack {
                // Menu Superior Estilo Fallout 4
                HStack (spacing: 20) {
                    Text("STAT")
                    Text("INV")
                        .padding()
                        .background(Color(Color("border_color")))
                        .cornerRadius(15)
                        .fontWeight(.bold)
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
                    Text("INVENTARIO")
                        .font(.system(size: 24, design: .monospaced))
                        .padding(20)
                }
                .foregroundStyle(Color(Color("text_color")))
                .shadow(color: Color("pipboy_green"), radius: 6)
                
                Spacer()
                
                ScrollView{
                    VStack(spacing: 15){
                        ForEach(items) { item in
                            HStack{
                                Text("° " + item.Nombre.uppercased())
                                    .padding(.horizontal,15)
                                Spacer()
                                Text("X \(item.cantidad)")
                                    .padding(.horizontal,15)
                                Text("(\(String(format: "%.1f", item.peso)))")
                                    .padding(.horizontal, 15)
                            }
                            .font(Font.system(.headline, design: .monospaced))
                            .foregroundStyle(Color(Color("text_color")))
                            .shadow(color: Color("pipboy_green"), radius: 6)
                        }
                        Divider().background(Color(Color("pipboy_green")))
                        
                        HStack(spacing: 10) {
                            Text("PESO: 4.6 / 150")
                            Spacer()
                            Text("CHAPAS: 1250")
                        }
                        .font(.system(.headline, design: .monospaced))
                        .foregroundStyle(Color(Color("text_color")))
                        .padding(15)
                        .shadow(color: Color("pipboy_green"), radius: 4)
                    }
                }
            }
        }

    }
}

#Preview{
    segunda_pantalla()
}
