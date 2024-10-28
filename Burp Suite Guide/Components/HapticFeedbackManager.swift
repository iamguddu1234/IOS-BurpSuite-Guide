//
//  HapticFeedbackManager.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import UIKit

struct HapticFeedbackManager {
    static let shared = HapticFeedbackManager()

        private init() {}

        func triggerHapticFeedback() {
            let impactMed = UIImpactFeedbackGenerator(style: .medium)
            impactMed.prepare()
            impactMed.impactOccurred()
        }
    }
