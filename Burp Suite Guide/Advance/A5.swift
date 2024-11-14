//
//  A5.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A5: View {
    
    let hh1 = "Exporting and Analyzing Logs in Burp Suite"
    let hh2 = "Exporting and analyzing logs in Burp Suite is crucial for tracking testing progress, documenting findings, and collaborating with team members. Here’s a detailed guide on how to export logs and analyze them effectively."
    
    let hh3 = "1. Understanding Log Types in Burp Suite"
    let hh4 = " Burp Suite maintains various logs depending on the tools being used:"
    let hh5 = "HTTP History: Records all HTTP/S requests and responses sent through the proxy."
    let hh6 = "Intruder Logs: Captures the results of automated attacks performed with the Intruder tool."
    let hh7 = "Scanner Logs: Contains findings from automated vulnerability scans."
    let hh8 = "Repeater Logs: Keeps track of requests sent and responses received during manual testing with the Repeater tool."
    
    let hh9 = "2. Exporting Logs"
    let hh10 = "#Exporting HTTP History"
    
    let hh11 = "1.Navigate to the Proxy Tab:"
    let hh12 = "Open Burp Suite and select theProxy tab."
    let hh13 = "Click onHTTP history."
    
    let hh14 = "2.Select Entries to Export:"
    let hh15 = "You can select individual entries or use `Ctrl + A` (Windows) or `Command + A` (Mac) to select all."
    
    let hh16 = "3.Export:"
    let hh17 = "Right-click on the selected entries and chooseSave selected items orSave all items."
    let hh18 = "Choose the file format (e.g., CSV, XML, or HTML) and specify the file name and location."
    let hh19 = "ClickSave to complete the export."
    
    let hh20 = "Exporting Intruder Results"
    
    let hh21 = "1.Navigate to the Intruder Tab:"
    let hh22 = "Click on theIntruder tab and then select theResults tab."
    
    let hh23 = " 2.Select Results:"
    let hh24 = "Select the desired results from the Intruder attack you performed."
    
    let hh25 = "3.Export:"
    let hh26 = "Right-click on the selected results and chooseExport."
    let hh27 = "Choose your preferred format (usually CSV) and save it to your desired location."
    
    let hh28 = "Exporting Scanner Results"
    
    let hh29 = "1.Navigate to the Scanner Tab:"
    let hh30 = "Click on theScanner tab to view scan results."
    
    let hh31 = "2.Select Scan Findings:"
    let hh32 = "Select the findings you want to export."
    
    let hh33 = "3.Export:"
    let hh34 = "Right-click and chooseExport."
    let hh35 = "Select the file format and save it."
    
    let hh36 = "3. Analyzing Logs"
    let hh37 = "#Using Burp Suite"
    let hh38 = "Filter Logs: Use the built-in filters in each log section (e.g., HTTP history) to focus on specific requests based on criteria like response status, method (GET, POST), or URL."
    let hh39 = "Search Functionality: Utilize the search feature to find specific requests or responses containing keywords or patterns of interest."
    let hh40 = "#External Analysis"
    
    let hh41 = "1.Import Logs into Analysis Tools:"
    let hh42 = "After exporting logs, you can import them into various analysis tools like Excel, Splunk, or any other data analysis software."
    let hh43 = "This allows for advanced filtering, sorting, and visualization of data."
    
    let hh44 = "2.Data Visualization:"
    let hh45 = "Use tools like Excel or Google Sheets to create graphs or pivot tables to visualize trends, such as:"
    let hh46 = "Frequency of certain request types (GET vs. POST)."
    let hh47 = "Response times to analyze performance."
    
    let hh48 = "3.Identifying Patterns:"
    let hh49 = "Review the exported logs for common vulnerabilities or patterns, such as:"
    let hh50 = "Repeated error messages indicating misconfigurations."
    let hh51 = "Unusual request patterns that may suggest automated attacks."
    
    let hh52 = "4.Collaborative Reporting:"
    let hh53 = "Share the exported logs and analyses with your team or clients to discuss findings and remediation strategies."
    let hh54 = "Use reports to track the progress of vulnerabilities over time."
    
    let hh55 = "4. Best Practices for Log Management"
    let hh56 = "Regular Export: Frequently export logs to keep track of changes and findings throughout your testing sessions."
    let hh57 = "Maintain Privacy: Ensure that sensitive data is redacted before sharing logs, especially if they contain personally identifiable information (PII)."
    let hh58 = "Secure Storage: Store exported logs in a secure location to protect against unauthorized access."
    
    let hh59 = "Conclusion"
    let hh60 = "Exporting and analyzing logs in Burp Suite is a vital aspect of penetration testing that aids in tracking vulnerabilities, documenting results, and collaborating effectively with teams. By leveraging the export features and employing effective analysis techniques, you can enhance your testing processes and improve application security."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        Text2(title1: hh1, title2: hh2)
                        
                        Text6(title1: hh3, title2: hh4, title3: hh5, title4: hh6, title5: hh7, title6: hh8)
                        
                        Text2(title1: hh9, title2: hh10)
                        
                        Text3(title1: hh11, title2: hh12, title3: hh13)
                        
                        Text2(title1: hh14, title2: hh15)
                        
                        Text4(title1: hh16, title2: hh17, title3: hh18, title4: hh19)
                        
                        Head(title: hh20)
                        
                        Text2(title1: hh21, title2: hh22)
                        
                        Text2(title1: hh23, title2: hh24)
                        
                        Text3(title1: hh25, title2: hh26, title3: hh27)
                        
                        Head(title: hh28)
                        
                        Text2(title1: hh29, title2: hh30)
                        
                        Text2(title1: hh31, title2: hh32)
                        
                        Text3(title1: hh33, title2: hh34, title3: hh35)
                        
                        Text5(title1: hh36, title2: hh37, title3: hh38, title4: hh39, title5: hh40)
                        
                        Text3(title1: hh41, title2: hh42, title3: hh43)
                        
                        Text4(title1: hh44, title2: hh45, title3: hh46, title4: hh47)
                        
                        Text4(title1: hh48, title2: hh49, title3: hh50, title4: hh51)
                        
                        Text3(title1: hh52, title2: hh53, title3: hh54)
                        
                        Text4(title1: hh55, title2: hh56, title3: hh57, title4: hh58)
                        
                        Text2(title1: hh59, title2: hh60)
                        
                        
                        
                        
                        
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
    A5()
}
