//
//  A8.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A8: View {
    
    let gg1 = "Common Burp Suite Vulnerability Types"
    let gg2 = "Burp Suite is a powerful tool for identifying various security vulnerabilities in web applications. Understanding the common types of vulnerabilities that Burp Suite can help detect is essential for effective penetration testing. Here are some of the most prevalent vulnerabilities that you may encounter:"

    let gg3 = "1. SQL Injection (SQLi)"
    let gg4 = "Description: SQL injection occurs when an attacker can manipulate a SQL query by injecting malicious input. This can lead to unauthorized access to databases, data leakage, or even data modification."
    let gg5 = "Detection with Burp Suite:"
    let gg6 = "Intruder: Use Intruder to automate SQL injection attacks with common payloads."
    let gg7 = "Scanner: The built-in scanner can automatically detect SQLi vulnerabilities in application inputs."


    let gg8 = " 2. Cross-Site Scripting (XSS)"
    let gg9 = "Description: XSS vulnerabilities allow attackers to inject malicious scripts into web pages viewed by other users. This can lead to session hijacking, defacement, or data theft."
    let gg10 = " Detection with Burp Suite:"
    let gg11 = "Repeater: Modify requests in the Repeater to test for XSS by injecting script tags or other payloads."
    let gg12 = "Scanner: Use the automated scanner to find reflected, stored, and DOM-based XSS vulnerabilities."

    let gg13 = "3. Cross-Site Request Forgery (CSRF)"
    let gg14 = "Description: CSRF attacks exploit the trust that a web application has in a user\'s browser. If a user is authenticated, an attacker can trick the user into executing unwanted actions."
    let gg15 = "Detection with Burp Suite:"
    let gg16 = "Manual Testing: Analyze state-changing requests (e.g., form submissions) to check if they are protected by CSRF tokens."
    let gg17 = "Extensions: Use specific Burp extensions to test CSRF protections more thoroughly."

    let gg18 = "4. Insecure Direct Object References (IDOR)"
    let gg19 = "Description: IDOR vulnerabilities occur when an attacker can access objects or resources (like files, user accounts, etc.) without proper authorization by manipulating input parameters."
    let gg20 = "Detection with Burp Suite:"
    let gg21 = "Intruder: Use the Intruder tool to brute-force IDs or access control mechanisms."
    let gg22 = "Manual Inspection: Examine URLs and request parameters for direct object references."

    let gg23 = "5. Security Misconfiguration"
    let gg24 = "Description: This vulnerability arises from poorly configured security settings, including default credentials, unnecessary services, or verbose error messages that disclose sensitive information."
    let gg25 = "Detection with Burp Suite:"
    let gg26 = "Scanner: The scanner can identify misconfigurations in web servers, application frameworks, and database configurations."
    let gg27 = "Manual Testing: Review server responses for error messages or misconfigured security headers."

    let gg28 = "6. Sensitive Data Exposure"
    let gg29 = "Description: Sensitive data exposure occurs when applications do not adequately protect sensitive information, such as passwords, credit card numbers, or personal data."
    let gg30 = "Detection with Burp Suite:"
    let gg31 = "Response Analysis: Examine responses in the HTTP history for sensitive data that should not be exposed."
    let gg32 = "Scanner: Use the scanner to detect unencrypted data in transit or weak cryptographic storage."

    let gg33 = "7. Broken Authentication and Session Management"
    let gg34 = "Description: Vulnerabilities in authentication mechanisms can allow attackers to impersonate users, hijack sessions, or escalate privileges."
    let gg35 = "Detection with Burp Suite:"
    let gg36 = "Session Management Testing: Analyze session tokens for predictability, expiration, and reuse."
    let gg37 = " Intruder: Test for weak passwords and authentication mechanisms by attempting brute-force attacks."

    let gg38 = "8. Command Injection"
    let gg39 = " Description: Command injection vulnerabilities occur when an application allows user input to be executed as system commands, potentially leading to unauthorized access to the server."
    let gg40 = "Detection with Burp Suite:"
    let gg41 = "Intruder: Use payloads that attempt to execute system commands in parameters or headers."
    let gg42 = " Repeater: Manually test input fields that might be vulnerable to command injection."

    let gg43 = "9. File Upload Vulnerabilities"
    let gg44 = "Description: File upload vulnerabilities allow attackers to upload malicious files that can be executed on the server or lead to arbitrary code execution."
    let gg45 = "Detection with Burp Suite:"
    let gg46 = "Intruder: Test the file upload functionality by uploading various file types and sizes to identify improper validation."
    let gg47 = " Manual Testing: Analyze response headers and file handling mechanisms for weaknesses."

    let gg48 = "10. Open Redirects"
    let gg49 = " Description: Open redirect vulnerabilities occur when an application accepts a user-controlled URL parameter and redirects to that URL without validation, leading to phishing attacks."
    let gg50 = "Detection with Burp Suite:"
    let gg51 = " Manual Testing: Test redirection parameters by manipulating them to point to external sites."
    let gg52 = "Scanner: Use the scanner to identify potential open redirect issues in applications."

    let gg53 = "Conclusion"
    let gg54 = "Burp Suite is an essential tool for penetration testers to identify a wide range of vulnerabilities in web applications. Familiarizing yourself with these common vulnerability types enables you to conduct thorough assessments and help strengthen application security. Regularly updating your knowledge of new vulnerabilities and how to detect them will enhance your effectiveness in using Burp Suite for security testing."

    
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
    A8()
}
