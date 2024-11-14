//
//  I10.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I10: View {
    
    let sa1 = "Finding Vulnerabilities in Web Applications"
    let sa2 = "Finding vulnerabilities in web applications is a critical aspect of web security assessment. This process involves using various tools, techniques, and methodologies to identify security weaknesses that could be exploited by attackers. Below is a detailed guide on how to find vulnerabilities in web applications effectively."
    
    let sa3 = "1. Understanding Web Application Vulnerabilities"
    let sa4 = "Web applications can have various types of vulnerabilities, including:"
    let sa5 = "Injection Attacks: Such as SQL injection, Command injection, and LDAP injection."
    let sa6 = "Cross-Site Scripting (XSS): Allowing attackers to execute scripts in the user\'s browser."
    let sa7 = "Cross-Site Request Forgery (CSRF): Forcing users to perform actions they did not intend to."
    let sa8 = "Insecure Direct Object References (IDOR): Accessing unauthorized resources by manipulating input parameters."
    let sa9 = "Security Misconfiguration: Inadequate settings that leave applications vulnerable."
    let sa10 = "Sensitive Data Exposure: Insufficient protection of sensitive information."
    
    let s11 = "2. Preparing for Vulnerability Assessment"
    
    let s12 = "Step 1: Gather Information"
    let s13 = "1.Perform Reconnaissance:"
    let s14 = "Collect as much information as possible about the target application, including:"
    let s15 = "Domain names"
    let s16 = "IP addresses"
    let s17 = "Technology stack (web server, application framework, database, etc.)"
    let s18 = "Entry points (login forms, APIs, etc.)"
    
    let s19 = "2.Use Tools for Information Gathering:"
    let s20 = "Tools likeNmap,Whois, andNetcraft can help gather detailed information about the target."
    
    let s21 = "3. Scanning for Vulnerabilities"
    
    let s22 = "Step 1: Automated Scanning Tools"
    let s23 = "1.Use Web Application Scanners:"
    let s24 = "Tools likeBurp Suite,OWASP ZAP, andAcunetix can automate the scanning process and identify common vulnerabilities."
    
    let s25 = "2.Configuration:"
    let s26 = "Configure the scanner to target specific areas of the application, including:"
    let s27 = "Input fields"
    let s28 = "API endpoints"
    let s29 = "Authentication mechanisms"
    
    let s30 = "3.Run the Scan:"
    let s31 = "Execute the scan and review the generated reports for identified vulnerabilities."
    
    let s32 = "Step 2: Manual Testing"
    let s33 = "1.Fuzzing:"
    let s34 = "Use fuzzing techniques to send unexpected or malformed input to the application to observe how it responds."
    let s35 = "Tools likeBurp Intruder or custom scripts can automate fuzzing."
    
    let s36 = "2.Parameter Manipulation:"
    let s37 = "Manually manipulate URL parameters, cookies, and form fields to check for vulnerabilities like IDOR or SQL injection."
    
    let s38 = "3.Testing Input Validation:"
    let s39 = "Check how the application handles unexpected input (e.g., special characters, long strings, etc.)."
    
    let s40 = "4. Exploiting Identified Vulnerabilities"
    
    let s41 = "Step 1: Validating Vulnerabilities"
    let s42 = "1.Exploitation:"
    let s43 = "For vulnerabilities that are identified, attempt to exploit them in a controlled manner to confirm their existence."
    let s44 = "UseBurp Repeater to modify and resend requests to test for SQL injection, XSS, etc."
    
    let s45 = "2.Check for Impact:"
    let s46 = "Determine the impact of the vulnerability (e.g., data leakage, privilege escalation, etc.) and document your findings."
    
    let s47 = "Step 2: Using Collaborator for Exploitation"
    let s48 = "1.Burp Collaborator:"
    let s49 = "If applicable, use Burp Collaborator to test for vulnerabilities such as SSRF or DNS exfiltration by generating unique payloads."
    
    let s50 = "2.Monitor Interactions:"
    let s51 = "Check the Collaborator tab for incoming requests to confirm that the application interacted with your payload."
    
    let s52 = "5. Reporting Vulnerabilities"
    
    let s53 = "Step 1: Document Findings"
    let s54 = "1.Create a Report:"
    let s55 = "Document all identified vulnerabilities, including:"
    let s56 = "Description of the vulnerability"
    let s57 = "Steps to reproduce"
    let s58 = "Evidence (screenshots, payloads, etc.)"
    let s59 = "Recommended remediation steps"
    
    let s60 = "2.Prioritize Issues:"
    let s61 = "Assess the severity of each vulnerability based on potential impact and exploitability, and prioritize them for remediation."
    
    let s62 = "6. Best Practices for Finding Vulnerabilities"
    let s63 = "Stay Updated: Regularly update your tools and knowledge about new vulnerabilities and exploits."
    let s64 = "Follow Methodologies: Adhere to established security assessment methodologies like OWASP\'s Testing Guide or NIST guidelines."
    let s65 = "Practice Ethical Hacking: Ensure that you have permission to test the application and that your actions comply with legal and ethical standards."
    
    let s66 = "7. Conclusion"
    let s67 = "Finding vulnerabilities in web applications is an essential task for security professionals. By following the steps outlined above, including information gathering, automated scanning, manual testing, exploitation, and reporting, you can effectively identify and remediate security weaknesses in web applications. This not only helps improve the security posture of the application but also protects users from potential attacks."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text2(title1: sa1, title2: sa2)
                        
                        Text8(title1: sa3, title2: sa4, title3: sa5, title4: sa6, title5: sa7, title6: sa8, title7: sa9, title8: sa10)
                        
                        Head(title: s11)
                        
                        Text7(title1: s12, title2: s13, title3: s14, title4: s15, title5: s16, title6: s17, title7: s18)
                        
                        Text2(title1: s19, title2: s20)
                        
                        Head(title: s21)
                        
                        Text3(title1: s22, title2: s23, title3: s24)
                        
                        Text5(title1: s25, title2: s26, title3: s27, title4: s28, title5: s29)
                        
                        Text2(title1: s30, title2: s31)
                        
                        Text4(title1: s32, title2: s33, title3: s34, title4: s35)
                        
                        Text2(title1: s36, title2: s37)
                        
                        Text2(title1: s38, title2: s39)
                        
                        Head(title: s40)
                        
                        Text4(title1: s41, title2: s42, title3: s43, title4: s44)
                        
                        Text2(title1: s45, title2: s46)
                        
                        Text3(title1: s47, title2: s48, title3: s49)
                        
                        Text2(title1: s50, title2: s51)
                        
                        Head(title: s52)
                        
                        Text7(title1: s53, title2: s54, title3: s55, title4: s56, title5: s57, title6: s58, title7: s59)
                        
                        Text2(title1: s60, title2: s61)
                        
                        Text4(title1: s62, title2: s63, title3: s64, title4: s65)
                        
                        Text2(title1: s66, title2: s67)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
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
    I10()
}
