//
//  B1.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B1: View {
    
    
    
    
    let a1 = "Welcome to the PenTest Proxy Tool Guide"
    let a2 = "The PenTest Proxy Tool Guide app is your go-to resource for mastering Burp Suite, the industry\'s leading tool for web security testing and penetration testing. Whether you\'re a beginner just getting started with security testing or a seasoned professional looking to enhance your skills, this app is designed to provide a comprehensive, step-by-step guide to using Burp Suite effectively."
    
    
    let a3 = "With 40+ in-depth topics, you\'ll explore everything from the basics of setting up Burp Suite to advanced techniques for discovering vulnerabilities, analyzing traffic, and exploiting security flaws. Each topic is carefully crafted to help you understand the features of Burp Suite and how to apply them in real-world scenarios."
    
    let a4 = "Key Features:"
    
    let a5 = "Comprehensive Learning:"
    let a6 = "Covering all the key tools and extensions of Burp Suite, from the Proxy to the Scanner, Repeater, and Intruder."
    
    let a7 = "Step-by-Step Guides:"
    let a8 = "Each topic is broken down into easy-to-follow instructions, with clear explanations and examples."
    
    let a9 = "Expert Tips &amp; Tricks:"
    let a10 = "Learn insider tips to speed up your testing process and improve accuracy."
    
    let a11 = "Hands-On Tutorials:"
    let a12 = "Practical exercises to help you practice what you\'ve learned."
    
    let a13 = "User-Friendly Interface:"
    let a14 = "Easily navigate through topics and find the information you need quickly."
    
    let a15 = "Who is this App For?"
    let a16 = "This app is perfect for:"
    let a17 = "Security professionals looking to sharpen their skills."
    let a18 = "Penetration testers wanting to make the most of Burp Suite\'s features."
    let a19 = "Ethical hackers working to identify vulnerabilities in web applications."
    let a20 = "Students and enthusiasts exploring the world of cybersecurity."
    
    let a21 = "No matter where you are in your learning journey, the Burp Suite Guide app will help you become more confident and efficient in using Burp Suite for web security testing."
    
    
    
    let a22 = "What is Burp Suite?"
    
    let a23 = "Burp Suite is a powerful and widely-used web vulnerability scanner and penetration testing tool, developed by PortSwigger. It is designed to help security professionals, ethical hackers, and penetration testers identify, analyze, and exploit security vulnerabilities in web applications. Burp Suite provides a comprehensive platform with various tools that assist in performing a full range of web application security testing."
    
    let a24 = "Some of its core features include:"
    
    let a25 = "Intercepting Proxy :"
    let a26 = "Allows testers to intercept and modify HTTP/S traffic between the client and the server."
    
    let a27 = "Scanner :"
    let a28 = "Automatically scans web applications for vulnerabilities, such as SQL Injection and Cross-Site Scripting (XSS)."
    
    let a29 = "Repeater &amp; Intruder :"
    let a30 = "Enables manual testing by replaying requests and launching customized attacks to exploit security flaws."
    
    let a31 = "Extensibility :"
    let a32 = "Supports numerous extensions that can be added to enhance functionality and automate various testing tasks."
    
    let a33 = "With its intuitive interface and extensive capabilities, Burp Suite has become an essential tool for anyone involved in web security testing."
    
    
    let a34 = "The best way to master PenTest Proxy Tool Guide is through hands-on practice. As you progress through each topic in this app, you’ll have the opportunity to apply what you’ve learned with real-world examples and exercises. This practical approach will help you build a strong foundation in web security testing, ensuring that you understand how each tool works in real scenarios."
    
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        
                        
                        Text3(title1: a1,title2: a2, title3: a3)
                        
                        Htext(title: a4)
                        
                        Text2(title1: a5, title2: a6)
                        Text2(title1: a7, title2: a8)
                        Text2(title1: a9, title2: a10)
                        Text2(title1: a11, title2: a12)
                        Text2(title1: a13, title2: a14)
                        
                        
                        
                        
                        
                        
                        Text6(title1: a15,title2: a16, title3: a17, title4: a18, title5: a19, title6: a20)
                        
                        Stext(title: a21)
                        
                        
                        
                        Text2(title1: a22, title2: a23)
                        Htext(title: a24)
                        
                        
                        
                        
                        
                        Text2(title1: a25, title2: a26)
                        Text2(title1: a27, title2: a28)
                        Text2(title1: a29, title2: a30)
                        Text2(title1: a31, title2: a32)
                        
                        Stext(title: a33)
                        
                        Htext(title: a34)
                        
                        
                        
                        
                    }
                    .padding()
                }
                
                Spacer()
                
                // Adjust the height of the banner as needed
                //                BannerAdView(adUnitID: "ca-app-pub-5541243853026577/1565121931") // Test ad unit ID
                //                    .frame(height: 50) // Set the height for the banner ad
                //                    .padding(.horizontal)// Optional: Add some bottom padding
            }
        }
    }
}


#Preview {
    B1()
}
