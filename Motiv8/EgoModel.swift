//
//  EgoModel.swift
//  Motiv8
//
//  Created by Lachlan America on 24/4/2025.
//
import SwiftUI

class EgoModel: ObservableObject {
    @Published var currentHealth: Int = 200 {
        didSet {
            updateImage()
        }
    }
    
    let maxHealth: Int = 200
    @Published var imageState: (name: String, offset: CGFloat) = ("EgoStanding", 50)
    
    func takeDamage(_ amount: Int) {
        // Never goes under zero
        currentHealth = max(currentHealth - amount, 0)
    }
    
    private func updateImage() {
        switch 100*currentHealth/maxHealth {
        case 60...:
            imageState = (name: "EgoStanding", offset: 50)
        case 20..<60:
            imageState = (name: "EgoBending", offset: 80)
        default:
            imageState = (name: "EgoCrawling", offset: 170)
        }
    }
}
