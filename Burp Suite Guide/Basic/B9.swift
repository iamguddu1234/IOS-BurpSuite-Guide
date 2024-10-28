//
//  B9.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B9: View {
    
   
    let i1 = "Performing Active Scanning with Burp Suite"
    let i2 = "Active scanning is a key feature of Burp Suite designed to identify vulnerabilities in a web application by sending requests and analyzing responses. Unlike passive scanning (which only observes traffic), active scanning actively interacts with the application, probing for issues like SQL injection, cross-site scripting (XSS), and other security flaws."

    let i3 = "Here’s a detailed guide on how to perform active scanning using Burp Suite:"

    let i4 = "1. What is Active Scanning?"
    let i5 = "Active scanning involves sending crafted requests to a target web application to discover security vulnerabilities. This process is more intrusive than passive scanning, as it involves directly interacting with the application by modifying inputs, testing for weaknesses, and analyzing how the application responds."
    let i6 = "Common vulnerabilities detected by active scanning include:"
    let i7 = "SQL Injection"
    let i8 = "Cross-Site Scripting (XSS)"
    let i9 = "Command Injection"
    let i10 = "Directory Traversal"
    let i11 = "Insecure Session Management"
    let i12 = "Burp Suite Pro offers a robust active scanning feature that automatically identifies many vulnerabilities."

    let i13 = "2. Pre-requisites for Active Scanning"
    let i14 = "Before starting an active scan, ensure the following:"
    let i15 = "Proper Configuration of Target Scope: Ensure that your target is properly defined and that you’ve set the scope to avoid scanning unintended areas, such as external domains or services. This will focus your scan and avoid triggering unnecessary alarms."
    let i16 = "Authentication: If the target requires login credentials to access certain areas, make sure you have logged in or configured Burp Suite’s session handling to maintain an active session during the scan."
    let i17 = "Permission: Always obtain permission from the target owner before performing an active scan, as it can be intrusive and may trigger alarms or affect the functionality of the target system."

    let i18 = "3. Initiating an Active Scan"

    let i19 = "3.1 Starting an Active Scan via the Target Tab"
    let i20 = "You can start an active scan from the Target tab, which lists all the URLs Burp Suite has discovered."

    let i21 = "1. Go to the Target Tab:"
    let i22 = "Navigate to the Target tab in Burp Suite, where you can see a detailed Site Map of the application."

    let i23 = "2. Select the Item to Scan:"
    let i24 = "Right-click on a specific URL, page, or parameter that you want to scan actively."
    let i25 = "From the context menu, select Scan and then Scan from here. This will allow you to scan the selected item or branch of the application."

    let i26 = "3. Configure the Scan:"
    let i27 = "A new window will pop up asking for configuration details. Here you can define the scan type (e.g., whether to scan for specific vulnerabilities like SQL injection) and scope (e.g., how deep or broad the scan should be)."

    let i28 = "4. Start the Scan:"
    let i29 = "Once you’ve configured the scan settings, click OK to start the active scan. Burp Suite will begin sending requests to the selected URL(s) and analyzing the responses for signs of vulnerabilities."

    let i30 = "3.2 Scanning from Other Tools"
    let i31 = "You can also initiate an active scan from other Burp Suite tools, such as:"
    let i32 = "Proxy Tab: If you’re working in the Proxy tab and intercepting traffic, you can right-click a request and select Do an Active Scan."
    let i33 = "Repeater Tab: After manually modifying a request in Repeater, you can send the same request for an active scan by right-clicking and selecting Scan."

    let i34 = "4. Configuring Scan Settings"
    let i35 = "Burp Suite’s active scanning can be customized through various configuration options. These settings allow you to control how thorough the scan is, what types of vulnerabilities it looks for, and how it handles potential issues."

    let i36 = "4.1 Scan Speed"
    let i37 = "Fast Scan: Performs a rapid scan but may miss some vulnerabilities."
    let i38 = "Thorough Scan: A more detailed scan that takes longer but is more likely to identify complex vulnerabilities."
    let i39 = "Custom Scan Speed: You can also set a custom scan speed to balance performance and thoroughness."

    let i40 = "4.2 In-Depth Scans"
    let i41 = "Parameter Manipulation: Burp Suite manipulates input parameters to test for vulnerabilities like SQL Injection, XSS, and other input validation issues."
    let i42 = "Heuristic Testing: Burp uses various heuristics (rules) to detect subtle flaws in application logic, authentication, and session management."

    let i43 = "4.3 Handling Forms and Sessions"
    let i44 = "If the scan encounters forms, Burp can be configured to auto-fill and submit form fields, or you can manually intervene to provide specific inputs (e.g., for login credentials)."
    let i45 = "You can configure Session Handling Rules to ensure that authenticated areas of the site remain accessible during the scan."

    let i46 = "5. Viewing Active Scan Results"
    let i47 = "As the scan progresses, Burp Suite will populate the Scanner Tab with detailed results. Here’s how to analyze the output:"

    let i48 = "5.1 Scan Queue"
    let i49 = "Burp Suite lists all requests that are being actively scanned in the Scan Queue section of the Scanner Tab. You can view the status of each request, including those that are in progress, completed, or waiting to be scanned."

    let i50 = "5.2 Issue Activity"
    let i51 = "The Issue Activity section shows a real-time feed of any vulnerabilities that Burp Suite has identified. For each issue, Burp provides the following:"
    let i52 = "Description: A detailed description of the vulnerability."
    let i53 = "Severity: Burp assigns a severity level to each issue (e.g., low, medium, high, critical)."
    let i54 = "Remediation Advice: Recommendations on how to fix the vulnerability."

    let i55 = "5.3 Individual Request and Response Analysis"
    let i56 = "For each identified vulnerability, you can view the specific request that triggered the issue and the server\'s response. This allows you to manually verify the vulnerability and understand how the application is affected."

    let i57 = "6. Managing and Reporting Vulnerabilities"
    let i58 = "Once Burp Suite has identified vulnerabilities during an active scan, you can manage and report these findings for further action:"

    let i59 = "6.1 Analyzing Vulnerabilities"
    let i60 = "Go through the identified issues in the Scanner Tab and review the detailed descriptions and suggested remediations."
    let i61 = "Prioritize the issues based on their severity and potential impact."

    let i62 = "6.2 Generating Reports"
    let i63 = "Burp Suite allows you to generate professional reports of the scan results. To generate a report:"
    let i64 = "Go to Scanner Tab > Report."
    let i65 = "Customize the report format (e.g., HTML, XML, or plain text) and the level of detail to include."
    let i66 = "You can choose to include specific vulnerability types, issue severities, or entire scan results."

    let i67 = "7. Best Practices for Active Scanning"

    let i68 = "7.1 Avoid Over-Scanning"
    let i69 = "Active scanning can be resource-intensive and potentially disruptive. Be mindful of how many resources (e.g., pages, forms, parameters) you’re scanning simultaneously to avoid overwhelming the target system or triggering automated security defenses."

    let i70 = "7.2 Monitor the Impact"
    let i71 = "Since active scanning sends potentially large numbers of requests, it can slow down a web application. Always monitor the impact on the server’s performance and halt the scan if you notice adverse effects."

    let i72 = "7.3 Combine with Manual Testing"
    let i73 = "Active scanning is a powerful tool but doesn’t replace manual testing. Use it as a complement to manual testing techniques like exploring business logic vulnerabilities, manual input manipulation, and reviewing application behavior."

    let i74 = "Conclusion"
    let i75 = "Active scanning in Burp Suite is a critical step in identifying vulnerabilities in a web application. By sending tailored requests and analyzing responses, Burp Suite can reveal potential security flaws such as SQL Injection, XSS, and other issues that could be missed in a purely passive analysis. Proper configuration, scope management, and analysis of results are essential for efficient and effective active scanning."

    
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
    B9()
}
