//
//  B7.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B7: View {
    
    
    let g1 = "7.Using the Target Tab"

    let g2 = "Using the Target Tab in Burp Suite"
    let g3 = "TheTarget Tab in Burp Suite is a central feature used for managing and organizing your security testing efforts. It provides a hierarchical view of the target website and enables users to keep track of which parts of the web application have been tested, set scopes for specific tests, and manage your interactions with the target site."

    let g4 = "Here\'s a detailed guide on how to use the Target Tab effectively in Burp Suite:"

    let g5 = "1. Overview of the Target Tab"
    let g6 = "The Target tab is divided into three primary sections:"
    let g7 = "Site Map: A hierarchical map of the target\'s structure, showing every URL or endpoint discovered during your interaction with the web application."
    let g8 = "Scope: Controls for defining which URLs or endpoints are part of your testing focus."
    let g9 = "Issue Definitions: Allows you to identify and label potential vulnerabilities or points of interest discovered during the test."
    let g10 = "Sub-Tabs within the Target Tab:"
    let g11 = "Site map: Shows all URLs collected during passive and active scanning."
    let g12 = "Scope: Allows you to define the specific part of the target website or application that you want to test."

    let g13 = "2. Site Map: Exploring the Target\'s Structure"
    let g14 = "TheSite Map gives you a visual structure of all URLs and resources discovered on the target. Burp Suite automatically adds entries to the Site Map as you browse and interact with the target using the Proxy, Spider, or Scanner tools."

    let g15 = "2.1 Viewing the Site Map"
    let g16 = "The Site Map is displayed as a tree structure. The root of the tree is the base URL of the target site, with all discovered subdirectories, files, and parameters listed beneath it."
    let g17 = "This provides a clear overview of the application structure, including scripts, images, forms, APIs, etc."

    let g18 = "2.2 Analyzing Individual Resources"
    let g19 = "When you select any URL in the Site Map, Burp Suite shows detailed information about that resource, including HTTP methods (GET/POST), response codes (e.g., 200, 404), and any associated parameters."
    let g20 = "You can see the completeRequest andResponse for each URL in the bottom pane, making it easy to analyze how the server responds to specific inputs."

    let g21 = "3. Setting the Scope for Your Test"
    let g22 = "The Scope feature allows you to define specific parts of the web application you want to focus on for your security testing."

    let g23 = "3.1 Adding URLs to Scope"
    let g24 = "Go to theScope sub-tab and manually add URLs or define patterns for the resources you want to test."
    let g25 = "You can include or exclude URLs based on their path, file type, or specific parameters, allowing you to focus only on the parts of the application that are relevant to your test."
    let g26 = "Right-click on any URL in the Site Map and select Add to Scope. Burp Suite will then treat only those URLs as part of your testing."

    let g27 = "3.2 Benefits of Setting Scope"
    let g28 = "Defining a scope helps focus your test on a particular area, especially for large or complex websites."
    let g29 = "Burp Suite\'s automated tools (such as Spider and Scanner) will only work within the defined scope, preventing unnecessary interactions with irrelevant parts of the application."
    let g30 = "It ensures that sensitive URLs (e.g., third-party domains, public-facing content) are excluded from your test."

    let g31 = "4. Issue Definitions: Tracking Vulnerabilities"
    let g32 = "As you test the application, you can use theIssue Definitions feature to track and categorize vulnerabilities found on the target."

    let g33 = "4.1 Identifying Issues"
    let g34 = "Burp Suite automatically highlights potential vulnerabilities it finds during scanning and manual testing."
    let g35 = "You can review theIssue Details in the Site Map or within theIssues tab."
    let g36 = "Each identified issue will include a description, severity rating (Low, Medium, High), and suggested remediation steps."

    let g37 = "4.2 Manual Marking of Issues"
    let g38 = "You can manually mark URLs or parameters that you suspect are vulnerable."
    let g39 = "Right-click on any request/response in the Site Map and choose Add Comment or Flag as Issue. This allows you to categorize or track the issue for further testing or reporting."

    let g40 = "5. Testing with Site Map in Detail"
    let g41 = "Burp Suite’s Site Map gives you an in-depth view of the entire structure of the target website, making it easier to identify areas that require further testing."

    let g42 = "5.1 Inspecting Endpoints"
    let g43 = "You can view and manually inspect each endpoint listed in the Site Map. It is particularly useful for finding hidden or less commonly accessed URLs that could be vulnerable."
    let g44 = "Example: Inspect API endpoints that may be used internally but could expose sensitive data."

    let g45 = "5.2 Analyzing Parameters and Query Strings"
    let g46 = "The Site Map reveals query parameters and form data sent to the server. You can review these parameters to look for input validation issues or potential injection points."
    let g47 = "Example: Examine parameters that may be vulnerable to SQL injection, XSS, or path traversal."

    let g48 = "5.3 Testing Form Inputs"
    let g49 = "The Site Map shows forms (e.g., login forms, search boxes) that send data to the server. You can intercept and test these forms for input validation or injection vulnerabilities."
    let g50 = "Example: Modify form inputs to include malicious payloads for testing."

    let g51 = "6. Real-World Use Cases of the Target Tab"
    let g52 = "The Target Tab is particularly useful in the following scenarios:"
    let g53 = "Organizing Large Applications: On large web applications with hundreds or thousands of endpoints, the Site Map makes it easy to track which parts of the application have been tested."
    let g54 = "Focusing on Critical Areas: Use the Scope feature to focus your efforts on the most sensitive parts of the application (e.g., login pages, payment forms) rather than wasting time on public or static content."
    let g55 = "Tracking Vulnerabilities: The ability to track and flag issues directly in the Site Map helps ensure that all vulnerabilities are addressed and thoroughly tested."

    let g56 = "Conclusion"
    let g57 = "The Target Tab in Burp Suite is a powerful tool for organizing, scoping, and tracking your security testing efforts. By providing a clear, hierarchical view of the target application, setting a well-defined scope, and managing issue definitions, you can effectively focus your testing on high-risk areas, making the process efficient and comprehensive."


    
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
    B7()
}
