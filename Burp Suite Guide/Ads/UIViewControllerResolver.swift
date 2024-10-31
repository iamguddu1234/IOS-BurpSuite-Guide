//
//  UIViewControllerResolver.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 30/10/24.
//

import SwiftUI
import UIKit

struct UIViewControllerHolder {
    weak var value: UIViewController?
}

struct UIViewControllerKey: EnvironmentKey {
    static var defaultValue: UIViewControllerHolder {
        return UIViewControllerHolder(value: nil)
    }
}

extension EnvironmentValues {
    var uiViewController: UIViewController? {
        get { self[UIViewControllerKey.self].value }
        set { self[UIViewControllerKey.self].value = newValue }
    }
}

struct UIViewControllerResolver: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        DispatchQueue.main.async {
            context.coordinator.parent?.environment(\.uiViewController, viewController)
        }
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }

    class Coordinator: NSObject {
        var parent: UIViewControllerResolver?

        init(parent: UIViewControllerResolver) {
            self.parent = parent
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
}
