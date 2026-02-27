//
//  tercera_pantalla.swift
//  A02_3-Interfaces
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

struct tercera_pantalla: View {
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
                        .padding()
                        .background(Color(Color("border_color")))
                        .cornerRadius(15)
                        .fontWeight(.bold)
                    Text("MAP")
                    Text("RADIO")
                }
                .font(.system(.headline, design: .monospaced))
                .foregroundStyle(Color(Color("text_color")))
                .padding(.top)
                
                Divider()
                    .background(Color(Color("pipboy_green")))
                
                Text("DATA > ESTADO DEL SISTEMA")
                    .padding(5)
                    .font(Font.system(.headline, design: .monospaced))
                    .foregroundStyle(Color(Color("text_color")))
                Divider().background(Color(Color("pipboy_green")))
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 25) {
                    // Bateria
                    CélulaDatoView(titulo: "NÚCLEO DE FUSIÓN", valor: "85% CARGADO", icono: "battery.100")
                    
                    // Wi-Fi
                    CélulaDatoView(titulo: "FRECUENCIA DE RADIO", valor: "CONECTADO - VAULT-TEC WI-FI 1.0", icono: "wifi")
                    
                    // Almacenamiento
                    CélulaDatoView(titulo: "MEMORIA HOLOCINTA", valor: "128GB / 256GB LIBRES", icono: "externaldrive")
                    
                    // Usuario
                    CélulaDatoView(titulo: "USUARIO REGISTRADO", valor: "MORADOR DEL REFUGIO", icono: "person.fill")
                }
                
                Spacer()
                
                // Sistema Operativo
                
                Text("OS: PIP-OS v4.1.2 - PROPIEDAD DE VAULT-TEC S.A.R.L. - 2023 IOS 17.4.1")
                    .font(.system(size: 10, design: .monospaced))
                    .foregroundStyle(Color(Color("pipboy_green")))
            }
            .padding()
        }
        
    }
}

struct CélulaDatoView: View {
    let titulo: String
    let valor: String
    let icono: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: icono)
                .font(.title3)
                .foregroundStyle(Color(Color("pipboy_green")))
                .frame(width: 30)
            
            VStack(alignment: .leading) {
                Text(titulo)
                    .font(.system(.subheadline, design: .monospaced, weight: .bold))
                
                Text(valor)
                    .font(.caption)
            }
            .foregroundStyle(Color(Color("pipboy_green")))
        }
    }
}

#Preview {
    tercera_pantalla()
}
