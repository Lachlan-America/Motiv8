//
//  Ego.swift
//  Motiv8
//
//  Created by Lachlan America on 23/4/2025.
//
import SwiftUI

struct EgoView: View {
    @EnvironmentObject var ego: EgoModel
    
    var body: some View {
        ZStack{
            Image("Pedestal")//.frame(height: 500)
            Image(ego.imageState.name).frame(width: 5, height: 5).padding(.top, ego.imageState.offset)
            // Health bar
            ZStack {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 300, height: 25)

                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.red)
                        .frame(width: 300 * CGFloat(ego.currentHealth) / CGFloat(ego.maxHealth), height: 25)
                }

                Text("\(ego.currentHealth)/\(ego.maxHealth)")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 300)
        }
    }
}
