//
//  cuarta_pantalla.swift
//  A02_2_Interfaces
//
//  Created by alumno on 2/20/26.
//

import SwiftUI

struct cuarta_pantalla: View {
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
                        .padding()
                        .background(Color(Color("border_color")))
                        .cornerRadius(15)
                        .fontWeight(.bold)
                    Text("RADIO")
                }
                .font(.system(.headline, design: .monospaced))
                .foregroundStyle(Color(Color("text_color")))
                .padding(.top)
                
                Divider()
                    .background(Color(Color("pipboy_green")))
                
                Spacer()
                
                GridBackground()
                    .stroke(style: StrokeStyle(lineWidth: 1))
                    .background(Color(Color("pipboy_green")))
                    .opacity(0.3)
                
                VStack(spacing: 20){
                    // Icono de advertencia o radar
                    Image(systemName: "antenna.radiowaves.left.and.right.slash")
                        .font(.system(size: 60))
                        .foregroundStyle(Color(Color("pipboy_green")))
                        .padding()
                    
                    // Texto de Estado
                    Text("LOCALIZACIÓN INVALIDA / RECALIBRANDO")
                        .font(Font.system(.headline, design: .monospaced))
                        .foregroundStyle(Color(Color("pipboy_green")))
                    
                    // Cuadro de "Error" o Desarrollo
                    VStack(spacing: 10){
                        Text("[ ERROR DE V.A.T.S. ]")
                        Text("[ MÓDULO DE GPS: NO DETECTADO ]")
                        Text("ESTADO: DESARROLLO POSIBLE")
                            .bold()
                    }
                    .font(Font.system(.caption, design: .monospaced))
                    .foregroundStyle(Color(Color("text_color")))
                    .padding()
                    .border(Color(Color("pipboy_green")), width: 2)
                    
                    // PROXY de barra de carga
                    ProgressView(value: 0.3)
                        .accentColor(Color(Color("pipboy_green")))
                        .frame(width: 200)
                    Text("BUSCANDO SATÉLITES . . .")
                        .font(Font.system(.caption, design: .monospaced))
                        .foregroundStyle(Color(Color("pipboy_green")))
                }
                
                Spacer()
            }
        }
    }
}

// Trazado de Lineas Clasico de la serie Fallout
struct GridBackground: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let step: CGFloat = 40
        for x in stride(from: 0, to: rect.width, by: step) {
            path.move(to: CGPoint(x: x, y: 0))
            path.addLine(to: CGPoint(x:x, y: rect.height))
        }
        for y in stride(from: 0, to: rect.height, by: step) {
            path.move(to: CGPoint(x: 0, y: y))
            path.addLine(to: CGPoint(x:rect.width, y: y))
        }
        return path
    }
}


#Preview {
    cuarta_pantalla()
}
