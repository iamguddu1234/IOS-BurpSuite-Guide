//
//  A2.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A2: View {
    
    let dd1 = "Advanced Scanning Techniques"
    let dd2 = "Burp Suite offers a range of advanced scanning techniques that enhance your ability to identify vulnerabilities in web applications. These techniques go beyond basic scanning and allow for more in-depth analysis and automated testing. This guide will cover various advanced scanning techniques available in Burp Suite, specifically in the context of security testing."
    
    let dd3 = " 1. Overview of Advanced Scanning Techniques"
    let dd4 = " Advanced scanning techniques involve leveraging Burp Suite\'s automated features to conduct comprehensive vulnerability assessments. These techniques are essential for finding complex vulnerabilities that may not be easily detected through manual testing. Key benefits include:"
    let dd5 = "Increased efficiency in identifying vulnerabilities."
    let dd6 = " The ability to conduct thorough testing across various attack vectors."
    let dd7 = " Automation of repetitive tasks in the testing process."
    
    let dd8 = "2. Types of Advanced Scanning Techniques"
    
    let dd9 = "Step 1: Active Scanning"
    let dd10 = "1.Active Scanning Basics:"
    let dd11 = "Active scanning involves sending various crafted requests to the target application to elicit responses that reveal vulnerabilities. This includes tests for SQL injection, Cross-Site Scripting (XSS), and more."
    
    let dd12 = "2.Configure Active Scan:"
    let dd13 = " In Burp Suite, navigate to theTarget tab, right-click on a request, and selectScan. Burp will start an active scan based on the selected request."
    
    let dd14 = "3.Customizing Scan Configuration:"
    let dd15 = "Go toScanner >Scan Configuration to customize the active scan options:"
    let dd16 = "Select specific vulnerability types to include or exclude."
    let dd17 = "Adjust scan speed, thread counts, and timeouts for optimized performance."
    
    let dd18 = "Step 2: Passive Scanning"
    let dd19 = " 1.Passive Scanning Basics:"
    let dd20 = " Passive scanning is the process of analyzing the traffic without actively sending requests. It captures and analyzes HTTP requests and responses to identify vulnerabilities."
    
    let dd21 = "2.Set Up Passive Scanning:"
    let dd22 = "Ensure passive scanning is enabled inProxy settings. Passive scans are automatically performed as you navigate through the application."
    
    let dd23 = "3.Review Passive Alerts:"
    let dd24 = " Go to theAlerts tab to view vulnerabilities identified through passive scanning, such as insecure cookies or missing security headers."
    
    let dd25 = "3. Using the Scanner Tool"
    
    let dd26 = "Step 1: Configuring the Burp Scanner"
    let dd27 = "1.Setting Up the Scanner:"
    let dd28 = "Navigate to theScanner tab and configure the options as needed:"
    let dd29 = "Enable or disable specific types of checks."
    let dd30 = "Customize alert thresholds for vulnerabilities."
    
    let dd31 = "2.Running Scans:"
    let dd32 = "You can run scans on specific URLs or the entire site. Right-click on a target and selectScan, or use theScan button in the Scanner tab."
    
    let dd33 = "Step 2: Analyzing Scan Results"
    let dd34 = "1.Reviewing Findings:"
    let dd35 = "After a scan completes, analyze the results in theIssues tab. Burp categorizes vulnerabilities by severity (high, medium, low)."
    
    let dd36 = "2.Exporting Reports:"
    let dd37 = "Generate reports summarizing findings for further analysis or sharing with development teams. Go toReports >Generate Report."
    
    let dd38 = "4. Using Intruder for Advanced Attacks"
    
    let dd39 = "Step 1: Configuring Intruder Attacks"
    let dd40 = "1.Setup Intruder:"
    let dd41 = "Send a request to the Intruder by right-clicking on it and selectingSend to Intruder."
    
    let dd42 = "2.Payload Positions:"
    let dd43 = "Highlight sections of the request to be modified (e.g., parameters) and configure them as payload positions."
    
    let dd44 = " 3.Choosing Payloads:"
    let dd45 = "Burp Suite offers various payload options, including:"
    let dd46 = "Simple lists of values."
    let dd47 = "Fuzzing payloads for testing boundary conditions."
    let dd48 = "Custom scripts for specialized payload generation."
    
    let dd49 = "Step 2: Executing Intruder Attacks"
    let dd50 = "1.Select Attack Type:"
    let dd51 = "Choose from different attack types:"
    let dd52 = "Sniper: Focuses on single positions for a precise attack."
    let dd53 = "Battering Ram: Uses the same payload for all positions."
    let dd54 = "Pitchfork: Applies different payloads to multiple positions simultaneously."
    let dd55 = "Clusterbomb: Combines multiple payloads for complex testing."
    
    let dd56 = " 2.Start the Attack:"
    let dd57 = "Launch the attack and monitor the results in real-time. Review responses to identify potential vulnerabilities."
    
    let dd58 = "5. Utilizing Burp Suite Extensions"
    
    let dd59 = "Step 1: Installing Extensions"
    let dd60 = "1.Accessing BApp Store:"
    let dd61 = "Go to theExtender tab and access the BApp Store to find useful extensions that enhance scanning capabilities."
    
    let dd62 = "2.Popular Extensions for Advanced Scanning:"
    let dd63 = "Active Scan++: Enhances the default active scanner with additional checks."
    let dd64 = " Retire.js: Scans for vulnerable JavaScript libraries."
    let dd65 = "SQLMap: Integrates SQLMap for advanced SQL injection testing."
    
    let dd66 = "Step 2: Configuring Extensions"
    let dd67 = "1.Set Up Extensions:"
    let dd68 = "Follow the installation instructions provided in the BApp Store. Each extension may have specific configuration requirements."
    
    let dd69 = "2.Utilizing Extension Features:"
    let dd70 = "After installation, use the additional features provided by extensions to improve your scanning process."
    
    let dd71 = "6. Best Practices for Advanced Scanning"
    let dd72 = "Regularly Update Burp Suite: Keep Burp Suite and its extensions updated to access the latest vulnerability checks and features."
    let dd73 = "Customize Scanning Profiles: Tailor scanning profiles based on the target application and the specific vulnerabilities you want to check for."
    let dd74 = "Limit Impact on Production: When scanning live applications, configure scans to minimize disruption. Use throttling options and limit the number of simultaneous requests."
    let dd75 = "Combine Passive and Active Scanning: Use both scanning types to cover all potential vulnerabilities."
    
    let dd76 = "7. Conclusion"
    let dd77 = "Advanced scanning techniques in Burp Suite are essential for thorough security assessments of web applications. By utilizing active and passive scanning, Intruder for automated attacks, and various extensions, security professionals can effectively identify vulnerabilities and strengthen the security posture of applications. Implementing these advanced techniques will enhance your ability to conduct comprehensive security testing."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text2(title1: dd1, title2: dd2)
                        
                        Text5(title1: dd3, title2: dd4, title3: dd5, title4: dd6, title5: dd7)
                        
                        Head(title: dd8)
                        
                        Text3(title1: dd9, title2: dd10, title3: dd11)
                        
                        Text2(title1: dd12, title2: dd13)
                        
                        Text4(title1: dd14, title2: dd15, title3: dd16, title4: dd17)
                        
                        Text3(title1: dd18, title2: dd19, title3: dd20)
                        
                        Text2(title1: dd21, title2: dd22)
                        
                        Text2(title1: dd23, title2: dd24)
                        
                        Head(title: dd25)
                        
                        Text5(title1: dd26, title2: dd27, title3: dd28, title4: dd29, title5: dd30)
                        
                        Text2(title1: dd31, title2: dd32)
                        
                        Text3(title1: dd33, title2: dd34, title3: dd35)
                        
                        Text2(title1: dd36, title2: dd37)
                        
                        Head(title: dd38)
                        
                        Text3(title1: dd39, title2: dd40, title3: dd41)
                        
                        Text2(title1: dd42, title2: dd43)
                        
                        Text5(title1: dd44, title2: dd45, title3: dd46, title4: dd47, title5: dd48)
                        
                        Text7(title1: dd49, title2: dd50, title3: dd51, title4: dd52, title5: dd53, title6: dd54, title7: dd55)
                        
                        
                        Text2(title1: dd56, title2: dd57)
                        
                        Head(title: dd58)
                        
                        Text3(title1: dd59, title2: dd60, title3: dd61)
                        
                        Text4(title1: dd62, title2: dd63, title3: dd64, title4: dd65)
                        
                        Text3(title1: dd66, title2: dd67, title3: dd68)
                        
                        Text2(title1: dd69, title2: dd70)
                        
                        Text5(title1: dd71, title2: dd72, title3: dd73, title4: dd74, title5: dd75)
                        
                        Text2(title1: dd76, title2: dd77)
                        
                        
                        
                        
                        
                        
                        
                        
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
    A2()
}
