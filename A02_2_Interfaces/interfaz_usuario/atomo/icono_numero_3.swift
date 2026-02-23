//
//  icono_numero_3.swift
//  A2-Interfaces
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct IconoNumero3: View {
    
    var nombre: String
    var tamaño: CGFloat = 100
    
    var body: some View {
        Image(systemName: nombre)
            .resizable()
            .scaledToFit()
            .frame(width: tamaño, height: tamaño)
            .foregroundStyle(Color.green).padding(15)
            .background(Color.gray)
            .mask(Circle())
    }
}

#Preview {
    IconoNumero3(nombre: "square.and.arrow.up")
}
