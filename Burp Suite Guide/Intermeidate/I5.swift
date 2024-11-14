//
//  I5.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I5: View {
    let t1 = "Understanding Burp Suite\'s Reporting Features"
    let t2 = "Burp Suite provides powerful reporting features that allow security testers and penetration testers to document their findings effectively. These reports are crucial for communicating vulnerabilities and their potential impacts to stakeholders, including developers and management. Below is a comprehensive overview of Burp Suite\'s reporting capabilities."
    
    let t3 = "1. Overview of Reporting Features"
    let t4 = "Customizable Reports: Generate reports tailored to specific audiences or purposes."
    let t5 = "Detailed Vulnerability Information: Provides comprehensive details on identified vulnerabilities, including risk ratings and potential impact."
    let t6 = "Export Options: Allows for exporting reports in various formats, such as PDF, HTML, and XML."
    let t7 = "Integration with Other Tools: Reports can be integrated with other tools and systems for further analysis and tracking."
    
    let t8 = "2. Generating Reports in Burp Suite"
    
    let t9 = "Step 1: Create a Project"
    let t10 = "1.Open Burp Suite: Launch Burp Suite and create or open an existing project."
    
    let t11 = "Step 2: Configure Reporting Settings"
    let t12 = "1.Navigate to the Reporting Tab:"
    let t13 = "Click on the `Reporting` tab in the Burp Suite interface."
    
    let t14 = "2.Select Report Options:"
    let t15 = "Choose the type of report you wish to generate. Burp Suite provides options for generating:"
    let t16 = "Standard Reports: Overview of findings with summaries."
    let t17 = "Detailed Reports: In-depth information on vulnerabilities, including evidence and remediation guidance."
    let t18 = "Executive Reports: High-level summaries intended for management."
    
    let t19 = "Step 3: Customize the Report"
    
    let t20 = "1.Select Data to Include:"
    let t21 = "Choose which findings, tasks, and information you want to include in the report. You can select specific vulnerabilities or areas of the application to focus on."
    
    let t22 = "2.Add Notes and Comments:"
    let t23 = "Include additional notes, comments, or recommendations in the report to provide context for the findings."
    
    let t24 = "3. Exporting Reports"
    
    let t25 = "Step 1: Choose Export Format"
    let t26 = "1.Select Export Options:"
    let t27 = "After generating the report, you can choose the format for export. Burp Suite supports several formats, including:"
    let t28 = "PDF: Good for formal presentations and easy distribution."
    let t29 = "HTML: Interactive format for web-based viewing."
    let t30 = "XML: Suitable for integration with other tools or for further processing."
    
    let t31 = "Step 2: Save the Report"
    let t32 = "1.Choose File Destination:"
    let t33 = "Specify the file name and location to save the exported report."
    
    let t34 = "2.Finalize Export:"
    let t35 = "Click on the export button to generate and save the report in the selected format."
    
    let t36 = "4. Using Reporting Features for Effective Communication"
    
    let t37 = "Step 1: Tailor Reports to the Audience"
    let t38 = "Technical Stakeholders: Include detailed vulnerability descriptions, technical evidence, and remediation steps."
    let t39 = "Management: Focus on high-level summaries, risk assessments, and recommendations for improving security posture."
    
    let t40 = "Step 2: Include Visual Elements"
    let t41 = "Use charts, graphs, and tables to present data clearly and concisely. Visual elements help convey the severity and impact of vulnerabilities more effectively."
    
    let t42 = "Step 3: Provide Actionable Recommendations"
    let t43 = "Include specific steps for remediation and recommendations for improving security practices. This information is valuable for developers and security teams."
    
    let t44 = "5. Best Practices for Reporting in Burp Suite"
    let t45 = "Consistent Reporting: Maintain a consistent format for reports across different assessments to facilitate comparison and tracking."
    let t46 = "Regular Updates: Update reports as new vulnerabilities are discovered or remediated to keep stakeholders informed."
    let t47 = "Document Context: Provide context for findings, including the testing environment and the methods used to discover vulnerabilities."
    
    let t48 = "6. Conclusion"
    let t49 = "Burp Suite\'s reporting features are essential for effectively communicating security findings and vulnerabilities. By leveraging customizable reports, export options, and tailored content for different audiences, security professionals can enhance their reporting process. This ultimately leads to better collaboration with development teams and improved security for web applications."
    let t50 = "Understanding how to utilize these reporting features effectively can significantly contribute to a successful security assessment and remediation process."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        
                        Text2(title1: t1, title2: t2)
                        
                        Text5(title1: t3, title2: t4, title3: t5, title4: t6, title5: t7)
                        
                        Head(title: t8)
                        
                        Text2(title1: t9, title2: t10)
                        
                        Text3(title1: t11, title2: t12, title3: t13)
                        
                        Text5(title1: t14, title2: t15, title3: t16, title4: t17, title5: t18)
                        
                        Head(title: t19)
                        
                        Text2(title1: t20, title2: t21)
                        
                        Text2(title1: t22, title2: t23)
                        
                        Head(title: t24)
                        
                        Text6(title1: t25, title2: t26, title3: t27, title4: t28, title5: t29, title6: t30)
                        
                        Text3(title1: t31, title2: t32, title3: t33)
                        
                        Text2(title1: t34, title2: t35)
                        
                        Head(title: t36)
                        
                        Text3(title1: t37, title2: t38, title3: t39)
                        
                        Text2(title1: t40, title2: t41)
                        
                        Text2(title1: t42, title2: t43)
                        
                        Text4(title1: t44, title2: t45, title3: t46, title4: t47)
                        
                        Text3(title1: t48, title2: t49, title3: t50)
                        
                        
                        
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
    I5()
}
