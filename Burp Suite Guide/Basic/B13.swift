//
//  B13.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B13: View {
    
    let m1 = "13.Engagement Tools in Burp Suite"

    let m2 = "Engagement Tools in Burp Suite"
    let m3 = "Burp Suite offers several Engagement Tools to help security testers manage and organize their testing process more effectively. These tools are designed to facilitate collaboration, documentation, and result analysis during a web application penetration test. Understanding these tools is essential for conducting a thorough security assessment."

    let m4 = "Here’s a detailed look at the engagement tools in Burp Suite:"

    let m5 = " 1. Engagement Tools Overview"
    let m6 = "Burp Suite’s Engagement Tools are located under theTarget tab and can be accessed via the context menu when right-clicking on a host or folder. These tools help testers:"
    let m7 = "Manage security assessment tasks."
    let m8 = "Document findings."
    let m9 = "Automate repetitive actions."
    let m10 = "Burp Suite Professional includes these advanced engagement tools, which are critical in managing large or complex penetration tests."

    let m11 = "2. Key Engagement Tools in Burp Suite"

    let m12 = "2.1 Analyze Target"
    let m13 = "This tool provides a high-level summary of the target\'s attack surface. It categorizes the content into different file types, such as HTML, scripts, and image files, and highlights any forms or parameters that could be relevant for testing."
    let m14 = "##How to Use:"
    let m15 = "Right-click on a target or folder in theSite Map."
    let m16 = "SelectEngagement Tools > Analyze Target."
    let m17 = "Burp will generate a report summarizing the structure and key attack points."
    let m18 = "##Key Benefits:"
    let m19 = "Helps understand the structure of the target application."
    let m20 = "Identifies areas that need attention for manual or automated testing."
    let m21 = "Saves time by focusing on the most important parts of the application."

    let m22 = "2.2 Discover Content"
    let m23 = "TheDiscover Content tool is used to find hidden or unlinked resources in the target web application, such as directories, files, or backup versions of files."
    let m24 = "##How to Use:"
    let m25 = "Right-click on a target or specific directory."
    let m26 = "SelectEngagement Tools > Discover Content."
    let m27 = "Burp will attempt to find additional content by performing brute force attacks using predefined wordlists."
    let m28 = "##Key Benefits:"
    let m29 = "Helps uncover hidden files, directories, and endpoints that may not be immediately visible."
    let m30 = "Aids in identifying sensitive resources or misconfigurations that can be exploited."

    let m31 = "2.3 Find References"
    let m32 = "This tool helps locate references to a particular item (such as a URL, parameter, or string) within the current project. It’s especially useful when you\'re trying to track down where a particular parameter is used across the target application."
    let m33 = "##How to Use:"
    let m34 = "Right-click on the item (URL, parameter, or string) in theSite Map orHTTP history."
    let m35 = "SelectEngagement Tools > Find References."
    let m36 = "Burp will search for all occurrences of that item throughout the recorded traffic and display the results."
    let m37 = "##Key Benefits:"
    let m38 = "Helps identify all places where a specific parameter, URL, or piece of data is used within the application."
    let m39 = "Useful for analyzing the scope and impact of vulnerabilities, such as CSRF tokens or session IDs."

    let m40 = "2.4 Search"
    let m41 = "The Search tool allows testers to search through all of Burp’s recorded data for specific terms or patterns. It’s often used for finding sensitive data (e.g., API keys, credentials) or specific vulnerabilities."
    let m42 = "##How to Use:"
    let m43 = "Click on theSearch tab under theTarget section."
    let m44 = "Enter the term or pattern you want to search for, and specify the scope (e.g., request headers, response bodies)."
    let m45 = "Burp will display all matches found in the project."
    let m46 = "##Key Benefits:"
    let m47 = "Provides a quick way to search for specific strings or patterns across all captured traffic."
    let m48 = "Can be used to identify exposed sensitive information or parameters that may require further investigation."

    let m49 = "2.5 Compare Site Maps"
    let m50 = "This tool allows you to compare the content of two different site maps, which can be particularly useful if you\'re testing a web application across different states or environments (e.g., before and after an update)."
    let m51 = "##How to Use:"
    let m52 = "Right-click on a target in theSite Map."
    let m53 = "SelectEngagement Tools > Compare Site Maps."
    let m54 = "Choose another site map to compare, and Burp will highlight the differences."
    let m55 = "##Key Benefits:"
    let m56 = "Helps identify new or modified content between two states of the application."
    let m57 = "Useful for regression testing or identifying changes after a new software release."

    let m58 = "2.6 Report Generation"
    let m59 = "Burp Suite Professional allows you to generate HTML or XML reports summarizing your findings. These reports can be customized to include different types of issues, depending on your target and scope."
    let m60 = "##How to Use:"
    let m61 = "Go to theTarget tab and right-click on the target folder."
    let m62 = "Select Engagement Tools > Generate Report."
    let m63 = "Choose the format (HTML or XML) and the type of issues to include in the report (e.g., vulnerabilities, scan results)."
    let m64 = "##Key Benefits:"
    let m65 = "Automatically generates a well-organized report that can be shared with clients or stakeholders."
    let m66 = "Customizable to include only the most relevant information, such as critical vulnerabilities or specific findings."

    let m67 = "3. Practical Use of Engagement Tools"

    let m68 = "3.1 Managing Complex Assessments"
    let m69 = "When testing a large web application, you may encounter a complex structure with many endpoints, parameters, and forms. TheAnalyze Target tool can give you a high-level overview, allowing you to prioritize your testing efforts."

    let m70 = "3.2 Finding Sensitive Content"
    let m71 = "The Discover Content tool is useful when you’re looking for hidden files or directories that could expose sensitive information, like configuration files or backup versions. This can help you find vulnerable endpoints or sensitive files that aren\'t linked from the main site."

    let m72 = "3.3 Tracking Parameters Across an Application"
    let m73 = "When analyzing the usage of a specific parameter (e.g., a session ID or CSRF token), theFind References tool can help you locate every instance of that parameter in the traffic. This is especially useful for understanding how sensitive data flows through the application."

    let m74 = "3.4 Comparing Application States"
    let m75 = "After making a change to an application or deploying an update, you can useCompare Site Maps to see what new endpoints or content have been added or removed, helping you identify potential security risks introduced by the update."

    let m76 = "3.5 Searching for Vulnerabilities"
    let m77 = "When hunting for specific vulnerabilities, such as hardcoded credentials or API keys, theSearch tool allows you to quickly locate sensitive information across your captured data. You can also search for specific patterns associated with common vulnerabilities."

    let m78 = "4. Conclusion"
    let m79 = "The Engagement Tools in Burp Suite provide essential features to streamline your web application security testing process. Whether it\'s analyzing the structure of a target application, discovering hidden content, tracking references, or generating reports, these tools help you manage and organize your testing efforts effectively. By integrating these tools into your workflow, you can ensure more efficient and thorough security assessments."
    
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
    B13()
}
