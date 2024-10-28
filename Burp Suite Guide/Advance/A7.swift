//
//  A7.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A7: View {
    
    let jj1 = "Burp Suite Community vs. Professional Edition"
    let jj2 = " Burp Suite, developed by PortSwigger, comes in two main editions: Community and Professional. Each edition is designed to cater to different user needs, ranging from individual security enthusiasts to professional penetration testers. Below is a detailed comparison of the two editions, focusing on their features, limitations, and ideal use cases."

    let jj3 = " 1. Overview of Each Edition"
    let jj4 = "Burp Suite Community Edition:"
    let jj5 = "A free version designed for hobbyists, students, and individuals learning about web application security."
    let jj6 = "Offers basic functionality to get started with penetration testing and web application security assessments."
    let jj7 = " Burp Suite Professional Edition:"
    let jj8 = "A paid version intended for professional penetration testers, security consultants, and organizations."
    let jj9 = "Provides advanced features and tools to conduct thorough security assessments."

    let jj10 = "2. Key Features Comparison"
    let jj11 = "* Price"
    let jj12 = "* Community: Free"
    let jj13 = "* Professional: Paid (annual subscription)"
    let jj14 = "* Proxy Interception"
    let jj15 = "* Both editions have proxy interception capabilities."
    let jj16 = "* HTTP History"
    let jj17 = "* Both editions allow access to HTTP history."
    let jj18 = "* Intruder Tool"
    let jj19 = "* Community: Limited to basic functionality."
    let jj20 = "* Professional: Fully functional with advanced attack options."
    let jj21 = "* Scanner"
    let jj22 = "* Community: Not available."
    let jj23 = "* Professional: Automated vulnerability scanning."
    let jj24 = "* Repeater Tool"
    let jj25 = "* Available in both editions."
    let jj26 = "* Sequencer Tool"
    let jj27 = "* Not available in Community; available in Professional."
    let jj28 = "* Extender (Plugins)"
    let jj29 = "* Community: Does not support plugins."
    let jj30 = "* Professional: Full access to BApp Store."
    let jj31 = " * API Access"
    let jj32 = " * Community: No access."
    let jj33 = "* Professional: Yes, for automation and integration."
    let jj34 = "* Collaborative Features"
    let jj35 = " * Not available in Community; available in Professional."
    let jj36 = " * Reporting"
    let jj37 = "* Community: Basic manual reporting."
    let jj38 = "* Professional: Advanced reporting features with customization."
    let jj39 = " * Support and Updates"
    let jj40 = " * Community: Limited to community support."
    let jj41 = "* Professional: Professional support with regular updates."
    let jj42 = "* Session Handling"
    let jj43 = "* Limited in Community; advanced in Professional."
    let jj44 = " * Burp Collaborator"
    let jj45 = " * Not available in Community; available in Professional."

    let jj46 = "3. Detailed Feature Analysis"
    let jj47 = "#Proxy Interception"
    let jj48 = "Community: Basic proxy features to intercept and modify requests."
    let jj49 = "Professional: Enhanced capabilities for advanced interception, including support for SSL/TLS."
    let jj50 = "#Intruder Tool"
    let jj51 = "Community: Limited to basic attack types, such as simple payloads."
    let jj52 = "Professional: Full functionality with advanced payload options, customizable attack configurations, and automated attacks."
    let jj53 = "#Scanner"
    let jj54 = "Community: Not available; manual testing only."
    let jj55 = "Professional: Automated vulnerability scanning capabilities, including SQL injection, XSS, and more."
    let jj56 = "#Extender (Plugins)"
    let jj57 = "Community: Does not support extensions."
    let jj58 = "Professional: Access to the BApp Store for a wide range of plugins, enhancing functionality (e.g., additional scanners, reporting tools)."
    let jj59 = "Reporting"
    let jj60 = "Community: Basic manual reporting; users must compile findings themselves."
    let jj61 = "Professional: Advanced reporting features, including customizable templates, automated report generation, and export in multiple formats (HTML, XML, Markdown)."

    let jj62 = "4. Ideal Use Cases"
    let jj63 = "Burp Suite Community Edition:"
    let jj64 = "Learning: Ideal for students and individuals new to web application security who want to practice basic penetration testing skills."
    let jj65 = "Hobbyist Testing: Suitable for casual users who want to perform light testing on personal projects or applications."
    let jj66 = "Burp Suite Professional Edition:"
    let jj67 = "Professional Penetration Testing: Best for security consultants and organizations needing a comprehensive suite for in-depth assessments."
    let jj68 = "Team Collaboration: Perfect for teams that require collaborative features, advanced reporting, and integration with other tools."
    let jj69 = "Automated Scanning: Essential for organizations looking to implement regular automated security scans to identify vulnerabilities."

    let jj70 = "5. Pricing Information"
    let jj71 = "Community Edition: Free to use, but limited in features."
    let jj72 = "Professional Edition: Requires a subscription, typically priced around $399 per user per year (pricing may vary based on promotions or bulk purchases)."

    let jj73 = "6. Conclusion"
    let jj74 = "The choice between Burp Suite Community and Professional Editions largely depends on the user\'s needs and budget. While the Community Edition provides a solid foundation for learning and basic testing, the Professional Edition offers a comprehensive set of features essential for serious penetration testing and security assessments. For those looking to advance their skills or conduct professional-grade testing, investing in the Professional Edition is recommended."

    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                
                     
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
    A7()
}
