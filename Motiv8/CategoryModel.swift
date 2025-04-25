//
//  CategoryModel.swift
//  Motiv8
//
//  Created by Lachlan America on 23/4/2025.
//
import SwiftUI

enum Category: String, CaseIterable, Identifiable {
    // Enum categories that can be chosen
    case social, focus, physical
    var id: String { rawValue }
    
    // Specify the default icon to use for the category
    var iconName: String {
        switch self {
            case .social: return "person.fill"
            case .focus: return "book.closed.fill"
            case .physical: return "dumbbell.fill"
        }
    }
    // Can specify what the icon's color gradient looks like
    var gradient: LinearGradient {
        switch self {
        case .social:
            return LinearGradient(colors: [.pink, .orange], startPoint: .top, endPoint: .bottom)
        case .focus:
            return LinearGradient(colors: [.pink, .purple], startPoint: .top, endPoint: .bottom)
        case .physical:
            return LinearGradient(colors: [.teal, .blue], startPoint: .top, endPoint: .bottom)
        }
    }
}
