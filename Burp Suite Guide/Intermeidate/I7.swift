//
//  I7.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I7: View {
    
    let v1 = "Cross-Site Scripting (XSS) Testing in Burp Suite"
    let v2 = "Cross-Site Scripting (XSS) is a prevalent vulnerability that allows attackers to inject malicious scripts into web pages viewed by other users. Burp Suite provides a suite of tools to facilitate the detection and exploitation of XSS vulnerabilities. This guide will outline how to perform XSS testing using Burp Suite effectively."
    
    let v3 = "1. Overview of XSS Vulnerabilities"
    let v4 = "Types of XSS:"
    let v5 = "Stored XSS: Malicious scripts are stored on the server and served to users."
    let v6 = "Reflected XSS: Malicious scripts are reflected off a web server and executed immediately, typically via a URL."
    let v7 = "DOM-based XSS: Vulnerabilities occur within the client-side scripts and are executed in the browser."
    let v8 = "Impact: Successful XSS attacks can lead to session hijacking, data theft, and user impersonation."
    
    let v9 = "2. Setting Up Burp Suite for XSS Testing"
    
    let v10 = "Step 1: Open Burp Suite"
    let v11 = "1. Launch Burp Suite and create or open an existing project."
    
    let v12 = "Step 2: Configure Proxy Settings"
    let v13 = "1.Browser Configuration:"
    let v14 = "Ensure your browser is set to route traffic through Burp Suite\'s proxy (typically running on `localhost:8080`)."
    
    let v15 = "2.Enable Intercept:"
    let v16 = "Make sure the intercept is on to capture requests going to the target application."
    
    let v17 = "3. Identifying Input Points for XSS"
    
    let v18 = "Step 1: Use Burp\'s Spider Tool"
    let v19 = "1.Crawl the Application:"
    let v20 = "Use the Spider tool to crawl the web application. This will help identify input fields, parameters, and endpoints that can be tested for XSS vulnerabilities."
    
    let v21 = "Step 2: Manual Inspection"
    let v22 = "1.Inspect Input Fields:"
    let v23 = "Look for input fields in forms, URL parameters, cookies, and any place user input is reflected in the application’s response."
    
    let v24 = "4. Testing for XSS Vulnerabilities"
    
    let v25 = "Step 1: Send Requests to Repeater"
    let v26 = "1.Select Requests:"
    let v27 = "Right-click on requests that contain user input and select Send to Repeater . This allows for manual modification and resending of requests."
    
    let v28 = "Step 2: Inject XSS Payloads"
    let v29 = "1.Common Payloads:"
    let v30 = "Use common XSS payloads to test for vulnerabilities. Examples include:"
    let v31 = "` script alert(\'XSS\') script` (alert xss script)"
    
    let v32 = "2.Modify Parameters:"
    let v33 = "Replace user input parameters in the request with XSS payloads and send the modified requests."
    
    let v34 = "5. Analyzing Responses"
    
    let v35 = "Step 1: Check for Execution of Payloads"
    let v36 = "1.Review the Response:"
    let v37 = "After sending requests with injected payloads, check the response for execution of the script. Look for:"
    let v38 = "Pop-up alerts (if using `alert()`)"
    let v39 = "Changes in the webpage content or behavior that indicate script execution."
    
    let v40 = "Step 2: Use the Browser’s Developer Tools"
    let v41 = "1.Inspect HTML:"
    let v42 = "Use browser developer tools to inspect the rendered HTML and check if your injected script is present in the response."
    
    let v43 = "6. Automated XSS Testing with the Scanner"
    
    let v44 = "Step 1: Configure the Scanner"
    let v45 = "1.Navigate to the Scanner Tab:"
    let v46 = "Click on the `Scanner` tab in Burp Suite."
    
    let v47 = "2.Set Scan Type:"
    let v48 = "Choose to run an active scan against the target application. Make sure to enable XSS detection options."
    
    let v49 = "Step 2: Run the Scan"
    let v50 = "1.Start the Scan:"
    let v51 = "Initiate the scan and let Burp Suite automatically test for XSS vulnerabilities across the identified input fields."
    
    let v52 = "7. Reporting XSS Findings"
    
    let v53 = "Step 1: Document Vulnerabilities"
    let v54 = "1.Capture Findings:"
    let v55 = "For each identified XSS vulnerability, capture relevant details, including:"
    let v56 = "Type of XSS (stored, reflected, or DOM-based)."
    let v57 = "Input parameter and payload used."
    let v58 = "Evidence of successful exploitation."
    
    let v59 = "Step 2: Generate Reports"
    let v60 = "1.Create a Detailed Report:"
    let v61 = "Use Burp Suite’s reporting features to document your findings comprehensively, including descriptions and remediation suggestions."
    
    let v62 = "8. Best Practices for XSS Testing"
    let v63 = "Use a Variety of Payloads: Test with a range of payloads to increase the likelihood of finding vulnerabilities."
    let v64 = "Review Application Context: Understand the context in which input is processed to effectively identify potential XSS vectors."
    let v65 = "Combine Manual and Automated Testing: Use both methods for thorough coverage and detection of XSS vulnerabilities."
    
    let v66 = "9. Conclusion"
    let v67 = "XSS vulnerabilities pose a significant threat to web applications. By leveraging Burp Suite\'s capabilities, security professionals can efficiently identify and test for XSS vulnerabilities. Following the steps outlined in this guide will enable you to effectively utilize Burp Suite for XSS testing, ultimately contributing to a stronger security posture for web applications. Regular testing and diligent documentation of findings are essential for mitigating XSS risks."
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text2(title1: v1, title2: v2)
                        
                        Text6(title1: v3, title2: v4, title3: v5, title4: v6, title5: v7, title6: v8)
                        
                        Head(title: v9)
                        
                        Text2(title1: v10, title2: v11)
                        
                        Text3(title1: v12, title2: v13, title3: v14)
                        
                        Text2(title1: v15, title2: v16)
                        
                        Head(title: v17)
                        
                        Text3(title1: v18, title2: v19, title3: v20)
                        
                        Text3(title1: v21, title2: v22, title3: v23)
                        
                        Head(title: v24)
                        
                        Text3(title1: v25, title2: v26, title3: v27)
                        
                        Text4(title1: v28, title2: v29, title3: v30, title4: v31)
                        
                        Text2(title1: v32, title2: v33)
                        
                        Head(title: v34)
                        
                        Text5(title1: v35, title2: v36, title3: v37, title4: v38, title5: v39)
                        
                        Text3(title1: v40, title2: v41, title3: v42)
                        
                        Head(title: v43)
                        
                        Text3(title1: v44, title2: v45, title3: v46)
                        
                        Text2(title1: v47, title2: v48)
                        
                        Text3(title1: v49, title2: v50, title3: v51)
                        
                        Head(title: v52)
                        
                        Text6(title1: v53, title2: v54, title3: v55, title4: v56, title5: v57, title6: v58)
                        
                        Text3(title1: v59, title2: v60, title3: v61)
                        
                        Text4(title1: v62, title2: v63, title3: v64, title4: v65)
                        
                        Text2(title1: v66, title2: v67)
                        
                        
                        
                        
                        
                        
                        
                        
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
    I7()
}
