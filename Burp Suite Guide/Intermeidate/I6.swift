//
//  I6.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I6: View {
    
    let u1 = "Using the SQL Injection Scanner in Burp Suite"
     let u2 = "SQL Injection (SQLi) is one of the most common and critical web application vulnerabilities. Burp Suite provides an SQL Injection Scanner that automates the detection of SQL injection vulnerabilities in web applications. This guide will walk you through how to effectively use the SQL Injection Scanner in Burp Suite."

     let u3 = "1. Overview of SQL Injection Scanner"
     let u4 = "Purpose: The SQL Injection Scanner is designed to identify SQL injection vulnerabilities by injecting payloads into requests and analyzing responses for indicators of vulnerabilities."
     let u5 = "Integration: It integrates seamlessly with other Burp Suite tools like Proxy, Spider, and Intruder for comprehensive security testing."

     let u6 = "2. Configuring the SQL Injection Scanner"

     let u7 = "Step 1: Open Burp Suite"
     let u8 = "1. Launch Burp Suite and create or open a project."

     let u9 = "Step 2: Set Up Your Target"
     let u10 = "1.Add Target URLs:"
     let u11 = "Ensure that the target web application is in your target scope. This can be done by adding the target URL(s) to the Target tab."

     let u12 = "2.Configure Proxy Settings:"
     let u13 = "Ensure that your browser is configured to route traffic through Burp Suite’s proxy to capture requests."

     let u14 = "Step 3: Start the Scanner"

     let u15 = "1.Navigate to the Scanner:"
     let u16 = "Click on the `Scanner` tab in Burp Suite."

     let u17 = "2.Configure Scanner Settings:"
     let u18 = "You can adjust various settings, such as the types of SQL injection attacks you want to test for. This may include:"
     let u19 = "Boolean-based SQL injection"
     let u20 = "Error-based SQL injection"
     let u21 = "Union-based SQL injection"
     let u22 = "Time-based blind SQL injection"

     let u23 = "3. Running the SQL Injection Scanner"

     let u24 = "Step 1: Identify Requests to Scan"
     let u25 = "1.Intercept Requests:"
     let u26 = "Use the Proxy tab to capture HTTP requests that contain user input fields, such as search forms or login forms."

     let u27 = "2.Send Requests to Scanner:"
     let u28 = "Right-click on the request you want to scan for SQL injection and select Scan."

     let u29 = "Step 2: Start the Scan"
     let u30 = "1.Select Scan Options:"
     let u31 = "You may be prompted to choose scan configurations (e.g., active scanning for SQL injection)."

     let u32 = "2.Run the Scan:"
     let u33 = "Click on the Scan button to initiate the SQL injection testing."

     let u34 = "4. Analyzing Scan Results"

     let u35 = "Step 1: Review Findings"
     let u36 = "1.Check the Scanner Tab:"
     let u37 = "The results of the SQL injection scan will appear in the Scanner tab once completed."

     let u38 = "2.Examine Detected Vulnerabilities:"
     let u39 = "Each identified vulnerability will be listed with details, including:"
     let u40 = "Type of SQL injection detected."
     let u41 = "Affected parameter or URL."
     let u42 = "Risk rating (low, medium, high)."

     let u43 = "Step 2: View Evidence"
     let u44 = "1.Inspect the Request and Response:"
     let u45 = "Click on a detected vulnerability to view the associated request and response. Look for:"
     let u46 = "Error messages indicating SQL syntax errors."
     let u47 = "Changes in response time suggesting time-based SQL injection."
     let u48 = "Response content that indicates successful data retrieval."

     let u49 = "5. Verifying Vulnerabilities"
     let u50 = "Step 1: Manual Testing"
     let u51 = "1.Replicate Vulnerabilities:"
     let u52 = "Manually replicate the detected SQL injection by modifying the parameters and sending similar requests using Burp Repeater."

     let u53 = "2.Test with Payloads:"
     let u54 = "Use common SQL injection payloads to further test and confirm the vulnerability."

     let u55 = "6. Reporting Findings"

     let u56 = "Step 1: Document Vulnerabilities"
     let u57 = "1.Create a Detailed Report:"

     let u58 = "Document each SQL injection vulnerability found, including:"
     let u59 = "Description of the vulnerability."
     let u60 = "Evidence (screenshots, requests, and responses)."
     let u61 = "Suggested remediation steps."

     let u62 = "Step 2: Export Report"
     let u63 = "1.Export the Report:"
     let u64 = "Use Burp Suite\'s reporting features to generate a report in your preferred format (PDF, HTML, etc.) for sharing with stakeholders."

     let u65 = "7. Best Practices for Using the SQL Injection Scanner"
     let u66 = "Regular Scanning: Conduct regular scans, especially after significant changes to the application."
     let u67 = "Combine Manual and Automated Testing: While the scanner is powerful, always complement it with manual testing to identify vulnerabilities that automated tools may miss."
     let u68 = "Stay Updated: Keep Burp Suite updated to benefit from the latest scanning techniques and vulnerability definitions."

     let u69 = "8. Conclusion"
     let u70 = "Using the SQL Injection Scanner in Burp Suite is an effective way to identify potential SQL injection vulnerabilities in web applications. By following the steps outlined in this guide, you can set up, run, and analyze SQL injection scans, ultimately improving the security posture of your web applications. Regular testing and diligent reporting will ensure that vulnerabilities are addressed promptly and effectively."

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
    I6()
}
