//
//  quinta_pantalla.swift
//  A02_2_Interfaces
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct quinta_pantalla: View {
    let PipBoyGreen = Color (red: 27/255, green: 255/255, blue: 128/255)
    
    @State private var animarOnda = false
    
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
                    Text("DATA")
                    Text("MAP")
                    Text("RADIO")
                        .padding()
                        .background(Color(Color("border_color")))
                        .cornerRadius(15)
                        .fontWeight(.bold)
                }
                .font(.system(.headline, design: .monospaced))
                .foregroundStyle(Color(Color("text_color")))
                .padding(.top)
                
                Divider()
                    .background(Color(Color("pipboy_green")))
                
                Spacer()
                
                VStack(spacing: 30) {
                    Text("RADIO > SELECCIÓN DE FRECUENCIAS")
                        .font(.system(.headline, design: .monospaced))
                        .foregroundStyle(Color(Color("text_color")))
                        .shadow(color: Color("pipboy_green"), radius: 6)
                    
                    Divider().background(Color(Color("pipboy_green")))
                    
                    Spacer()
                    
                }
                
                // Lista de Emisoras
                
                VStack(spacing: 15){
                    FilaRadioView(emisora: "RADIO DIAMOND CITY", activo: false)
                    FilaRadioView(emisora: "SEÑAL DE SOCORRO", activo: false)
                    FilaRadioView(emisora: "FRECUENCIA MILITAR AF95", activo: true)
                    FilaRadioView(emisora: "RADIO CLASICA", activo: false)
                }
                .padding(15)
                
                
                // Emisora Seleccionada
                HStack{
                    Image(systemName: "antenna.radiowaves.left.and.right.circle")
                    Text(". . . BUSCANDO SEÑAL . . .")
                        .italic()
                }
                .font(.system(.body, design: .monospaced))
                .foregroundStyle(Color.pipboyGreen)
                .padding()
                .border(Color.pipboyGreen)
                
                Spacer()
                
                // Pie de App
                Text("AM 880 --- | --- --- | --- --- 1080 FM")
                    .font(.system(.caption, design: .monospaced))
                    .foregroundStyle(Color.pipboyGreen)
            }
            .padding()
        }
    }
}

// Sub Vista, para que jale el ForEach de la Filas
struct FilaRadioView: View{
    let emisora: String
    let activo: Bool
    
    var body: some View{
        HStack{
            Circle()
                .stroke(Color.pipboyGreen, lineWidth: 1)
                .frame(width: 10, height: 10)
            Text(emisora)
                .font(.system(.body, design: .monospaced))
            Spacer()
        }
        .padding(.horizontal, 25)
        .foregroundStyle(Color.pipboyGreen.opacity(activo ? 1.0 : 0.3))
    }
}

#Preview {
    quinta_pantalla()
}
