//
//  I9.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I9: View {
    
    let w1 = "Cross-Site Request Forgery (CSRF) Testing in Burp Suite"
    let w2 = "Cross-Site Request Forgery (CSRF) is a web security vulnerability that allows an attacker to perform actions on behalf of a user without their consent. CSRF exploits the trust that a web application has in the user\'s browser. Burp Suite provides powerful tools for detecting and testing for CSRF vulnerabilities. This guide outlines the steps to perform CSRF testing using Burp Suite effectively."

    let w3 = "1. Overview of CSRF Vulnerabilities"
    let w4 = "Mechanism: CSRF attacks work by tricking a user into unknowingly submitting a malicious request to a web application in which they are authenticated."
    let w5 = "Impact: Successful CSRF attacks can lead to unauthorized actions, such as changing user account details, transferring funds, or executing unwanted actions on behalf of the user."

    let w6 = "2. Setting Up Burp Suite for CSRF Testing"

    let w7 = "Step 1: Open Burp Suite"
    let w8 = "1. Launch Burp Suite and create or open an existing project."

    let w9 = "Step 2: Configure Proxy Settings"
    let w10 = "1.Browser Configuration:"
    let w11 = "Ensure your browser is set to route traffic through Burp Suite’s proxy (typically running on `localhost:8080`)."

    let w12 = "2.Enable Intercept:"
    let w13 = "Make sure the intercept is on to capture requests going to the target application."

    let w14 = "3. Identifying Potential CSRF Vulnerabilities"

    let w15 = "Step 1: Use Burp\'s Spider Tool"
    let w16 = "1.Crawl the Application:"
    let w17 = "Use the Spider tool to crawl the web application. This helps identify endpoints that change user data or perform actions (e.g., account settings, transactions)."

    let w18 = "Step 2: Review Forms and Requests"
    let w19 = "1.Inspect Forms:"
    let w20 = "Look for forms that perform sensitive actions (like changing passwords, deleting accounts, etc.) and analyze how they handle CSRF tokens."

    let w21 = "2.Check for CSRF Protection:"
    let w22 = "Review whether the application uses anti-CSRF tokens in forms or requests."

    let w23 = "4. Testing for CSRF Vulnerabilities"

    let w24 = "Step 1: Send Requests to Repeater"
    let w25 = "1.Select Requests:"
    let w26 = "Right-click on requests related to sensitive actions and select Send to Repeater . This allows for manual testing of CSRF vulnerabilities."

    let w27 = "Step 2: Craft Malicious Requests"
    let w28 = "1.Modify Requests:"
    let w29 = "In the Repeater, modify the request to remove CSRF tokens if present. You can also create a simple HTML page to simulate the attack."



    let w31 = "2.Simulate a CSRF Attack:"
    let w32 = "Create a CSRF exploit page that the victim could be tricked into loading."

    let w33 = "5. Analyzing Responses"

    let w34 = "Step 1: Check for Unauthorized Actions"
    let w35 = "1.Execute the Malicious Request:"
    let w36 = "Open the exploit page and submit the form to see if the sensitive action is performed without the user’s consent."

    let w37 = "2.Review the Response:"
    let w38 = "Check if the action was successful by looking for confirmation messages or changes in the target application."

    let w39 = "6. Automated CSRF Testing with the Scanner"

    let w40 = "Step 1: Configure the Scanner"
    let w41 = "1.Navigate to the Scanner Tab:"
    let w42 = "Click on the `Scanner` tab in Burp Suite."

    let w43 = "2.Set Scan Type:"
    let w44 = "Choose to run an active scan against the target application and ensure CSRF detection options are enabled."

    let w45 = "Step 2: Run the Scan"
    let w46 = "1.Start the Scan:"
    let w47 = "Initiate the scan to allow Burp Suite to automatically test for CSRF vulnerabilities across the identified input fields."

    let w48 = "7. Reporting CSRF Findings"

    let w49 = "Step 1: Document Vulnerabilities"
    let w50 = "1.Capture Findings:"
    let w51 = "For each identified CSRF vulnerability, capture relevant details, including:"
    let w52 = "Description of the CSRF vulnerability."
    let w53 = "Input parameter and actions affected."
    let w54 = "Evidence of successful exploitation."

    let w55 = "Step 2: Generate Reports"
    let w56 = "1.Create a Detailed Report:"
    let w57 = "Use Burp Suite’s reporting features to document your findings comprehensively, including descriptions and suggested remediation steps."

    let w58 = "8. Best Practices for CSRF Testing"
    let w59 = "Test All Forms: Ensure you test all forms and actions that perform sensitive operations."
    let w60 = "Check Anti-CSRF Measures: Always verify if the application implements proper CSRF tokens and how they are validated."
    let w61 = "Use Different Browsers: Test in various browsers to ensure consistent CSRF protection across different platforms."

    let w62 = "9. Conclusion"
    let w63 = "CSRF vulnerabilities pose significant risks to web applications. By utilizing Burp Suite’s powerful testing capabilities, security professionals can effectively identify and exploit CSRF vulnerabilities. Following the steps outlined in this guide will enable you to conduct thorough CSRF testing, ultimately improving the security posture of web applications. Regular testing and diligent documentation of findings are essential for mitigating CSRF risks."

    
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
    I9()
}
