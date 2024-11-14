//
//  A12.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A12: View {
    
    
    let bb1 = "Integrating Burp Suite with CI/CD"
    let bb2 = "Integrating Burp Suite into your Continuous Integration/Continuous Deployment (CI/CD) pipeline can enhance your security testing by automating vulnerability assessments as part of your development process. This guide outlines how to achieve this integration effectively."
    
    let bb3 = "1. Overview of CI/CD Integration"
    let bb3a = "CI/CD pipelines automate the process of software development, testing, and deployment. By integrating Burp Suite, you can:"
    let bb4 = "Automatically scan for vulnerabilities in your applications."
    let bb5 = "Ensure security checks are conducted regularly and consistently."
    let bb6 = "Reduce the risk of deploying insecure applications."
    
    let bb7 = "2. Prerequisites"
    let bb8 = "Before integrating Burp Suite with CI/CD, ensure you have the following:"
    let bb9 = "Burp Suite Professional: The Professional version supports command-line options and integrations necessary for CI/CD."
    let bb10 = "CI/CD Tool: A CI/CD tool such as Jenkins, GitLab CI, CircleCI, or Travis CI."
    let bb11 = "Familiarity with Docker: If using Burp Suite in Docker."
    
    let bb12 = "3. Setting Up Burp Suite for CI/CD"
    
    let bb13 = "Step 1: Command-Line Interface (CLI) Access"
    let bb14 = "1.Access Burp Suite CLI:"
    let bb15 = "Burp Suite Professional supports a command-line interface for running scans. Familiarize yourself with the commands necessary to execute scans and generate reports."
    
    let bb16 = "2.Example CLI Command:"
    let bb17 = "Use the following command to start a scan:"
    let bb18 = "java -jar burpsuite_pro.jar --project-file=project.burp --config-file=config.json --scan-url=https://example.com"
    let bb19 = "Adjust the command according to your project and environment."
    
    let bb20 = "Step 2: Create a Configuration File"
    let bb21 = "1.Create a `config.json`:"
    let bb22 = "Define your scan settings in a configuration file. This file can include settings for scan types, exclusions, and report formats."
    let bb23 = "json"
    let bb24 = "{"
    let bb25 = "scanner: {"
    let bb26 = "scanType: active,"
    let bb27 = "scope: https://example.com"
    let bb28 = "}"
    let bb29 = "}"
    
    let bb30 = "4. Integrating with CI/CD Tools"
    
    let bb31 = "Step 1: Using Jenkins as an Example"
    let bb32 = "1.Install Jenkins:"
    let bb33 = "Make sure Jenkins is installed and configured on your server."
    
    let bb34 = "2.Create a New Job:"
    let bb35 = "In Jenkins, create a new Freestyle project or Pipeline job."
    
    let bb36 = "3.Configure Job Steps:"
    let bb37 = "Add build steps to run the Burp Suite scan:"
    
    let bb38 = "For Freestyle project:"
    let bb39 = "In the Build section, add an Execute Shell step with the command to run Burp Suite."
    
    let bb40 = "For Pipeline project:"
    let bb41 = "groovy"
    let bb42 = "pipeline {"
    let bb43 = "agent any"
    let bb44 = "stages {"
    let bb45 = "stage(\'Security Scan\') {"
    let bb46 = "steps {"
    let bb47 = "sh \'java -jar burpsuite_pro.jar --project-file=project.burp --config-file=config.json --scan-url=https://example.com\'"
    let bb48 = "}"
    let bb49 = "}"
    let bb50 = "}"
    let bb51 = "}"
    
    let bb52 = "4.Set Up Notifications:"
    let bb53 = "Configure post-build actions to send notifications based on the scan results. You can use plugins to send emails or integrate with Slack."
    
    let bb54 = "Step 2: Using GitLab CI as an Example"
    let bb55 = "1.Create `.gitlab-ci.yml`:"
    let bb56 = "In your repository, create a file named `.gitlab-ci.yml` and configure it as follows:"
    let bb57 = "yaml"
    let bb58 = "stages:"
    let bb59 = "security_scan"
    let bb60 = "security_scan:"
    let bb61 = "image: openjdk:8-jdk"
    let bb62 = "stage: security_scan"
    let bb63 = "script:"
    let bb64 = "java -jar burpsuite_pro.jar --project-file=project.burp --config-file=config.json --scan-url=https://example.com"
    let bb65 = "artifacts:"
    let bb66 = "paths:"
    let bb67 = "reports/"
    let bb68 = "This configuration runs Burp Suite in a Java Docker container."
    
    let bb69 = "5. Analyzing Results"
    
    let bb70 = "1.Generate Reports:"
    let bb71 = "Configure Burp Suite to generate reports after each scan. The reports should be saved as artifacts in your CI/CD pipeline."
    
    let bb72 = "2.Review Findings:"
    let bb73 = "Review the security findings in the generated reports to address vulnerabilities identified during the scan."
    
    let bb74 = "6. Best Practices for Integration"
    let bb75 = "Run Scans on Staging Environments: Always scan staging environments before promoting code to production."
    let bb76 = "Schedule Regular Scans: Automate scans to run regularly, ensuring continuous monitoring of vulnerabilities."
    let bb77 = "Integrate with Issue Trackers: Automatically create tickets in issue trackers for any vulnerabilities found during scans."
    let bb78 = "Keep Burp Suite Updated: Ensure you are using the latest version of Burp Suite to take advantage of new features and vulnerability checks."
    
    let bb79 = "7. Conclusion"
    let bb80 = "Integrating Burp Suite into your CI/CD pipeline is a powerful way to enhance your application’s security posture. By automating vulnerability scans and generating reports, you can identify and address security issues early in the development process, leading to more secure applications and reducing the risk of deploying vulnerabilities into production. Following the steps outlined in this guide will help you successfully implement this integration in your CI/CD workflows."
    
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text2(title1: bb1, title2: bb2)
                        
                        Text5(title1: bb3, title2: bb3a, title3: bb4, title4: bb5, title5: bb6)
                        
                        Text5(title1: bb7, title2: bb8, title3: bb9, title4: bb10, title5: bb11)
                        
                        Head(title: bb12)
                        
                        Text3(title1: bb13, title2: bb14, title3: bb15)
                        
                        Text4(title1: bb16, title2: bb17, title3: bb18, title4: bb19)
                        
                        Text10(title1: bb20, title2: bb21, title3: bb22, title4: bb23, title5: bb24, title6: bb25, title7: bb26, title8: bb27, title9: bb28, title10: bb29)
                        
                        Head(title: bb30)
                        
                        Text3(title1: bb31, title2: bb32, title3: bb33)
                        
                        Text2(title1: bb34, title2: bb35)
                        
                        Text2(title1: bb36, title2: bb37)
                        
                        Text2(title1: bb38, title2: bb39)
                        
                        Text12(title1: bb40, title2: bb41, title3: bb42, title4: bb43, title5: bb44, title6: bb45, title7: bb46, title8: bb47, title9: bb48, title10: bb49, title11: bb50, title12: bb51)
                        
                        Text2(title1: bb52, title2: bb53)
                        
                        Text15(title1: bb54, title2: bb55, title3: bb56, title4: bb57, title5: bb58, title6: bb59, title7: bb60, title8: bb61, title9: bb62, title10: bb63, title11: bb64, title12: bb65, title13: bb66, title14: bb67, title15: bb68)
                        
                        Head(title: bb69)
                        
                        Text2(title1: bb70, title2: bb71)
                        
                        Text2(title1: bb72, title2: bb73)
                        
                        Text5(title1: bb74, title2: bb75, title3: bb76, title4: bb77, title5: bb78)
                        
                        Text2(title1: bb79, title2: bb80)
                        
                        
                        
                        
                        
                        
                        
                        
                        
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
    A12()
}
