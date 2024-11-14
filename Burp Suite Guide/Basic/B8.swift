//
//  B8.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B8: View {
    
    
    let h1 = "Spidering Web Applications with Burp Suite"
      let h2 = "Spidering is a process used in web application testing to automatically discover and map the structure of a website by following all available links and inputs. In Burp Suite, theSpider tool crawls a target web application, identifying all of its resources such as pages, forms, scripts, and parameters. This provides security testers with a comprehensive overview of the application for further manual or automated testing."

      let h3 = " Here’s a detailed guide on how to use the Spider tool in Burp Suite:"

      let h4 = " 1. What is Spidering in Burp Suite?"
      let h5 = "Spidering involves systematically crawling a web application to gather information about its structure and components, such as:"
      let h6 = "URLs"
      let h7 = "Forms"
      let h8 = "JavaScript files"
      let h9 = "Query parameters"
      let h10 = "Links to internal resources"
      let h11 = "This process helps identify the full attack surface of a web application by finding all available endpoints, which is critical for conducting a thorough security assessment."

      let h12 = "2. How Burp Suite’s Spider Tool Works"
      let h13 = "The Spider in Burp Suite operates in two primary modes:"
      let h14 = " 1.Passive Spidering: Burp Suite gathers information while you manually browse the application via theProxy tool. It observes and collects URLs, parameters, and page structures without actively interacting with the server."
      let h15 = "2.Active Spidering: Burp Suite actively navigates the website by making requests to the server. It systematically follows links, submits forms, and crawls all accessible areas of the application."

      let h16 = "3. Starting a Spider in Burp Suite"

      let h17 = "3.1 Using the Spider Tool"
      let h18 = "Here’s how you can launch the Spider tool to crawl a target web application:"
      let h19 = "1.Open the Target Tab:"
      let h20 = "Go to theTarget tab, where you will see theSite Map of the application."
      let h21 = "2.Right-click on the URL or Directory:"
      let h22 = "In the Site Map, right-click on the URL or directory you want to spider."
      let h23 = "SelectSpider this Host orSpider this Branch from the dropdown menu. This will instruct Burp Suite to begin crawling the selected URL or directory."
      let h24 = " 3.Configure Spider Options:"
      let h25 = "A configuration window will pop up, allowing you to define spidering behavior."
      let h26 = "You can configure how forms are submitted (e.g., auto-submit, prompt for input) and set limits on recursion depth (how deep the spider should go) and scope (which parts of the site to spider)."

      let h27 = "4.Start Spidering:"
      let h28 = "Once the configurations are set, click Start. The Spider will then crawl the target and display the results in the Site Map."

      let h30 = "3.2 Automatic Spidering via Proxy"
      let h31 = "As you browse the web application through Burp’s Intercepting Proxy, the Spider will automatically collect data in the background and add it to the Site Map. This passive spidering technique ensures that you gather a full list of URLs without the risk of triggering defensive mechanisms like CAPTCHA or WAFs (Web Application Firewalls)."

      let h32 = "4. Spidering Configuration Options"
      let h33 = "Before starting the Spider, you can fine-tune its behavior for more controlled and efficient scanning."

      let h34 = "4.1 Maximum Depth"
      let h35 = "Recursion depth: Controls how deep the spider should crawl. For example, you might only want to crawl a few layers deep into a web application, or you may want to go as far as possible to find hidden or buried resources."
      let h36 = "Default recommendation: Keep this limit to avoid spidering unnecessary resources or third-party sites."

      let h37 = "4.2 Handling Forms"
      let h38 = "Burp Suite can automatically submit forms as part of the spidering process. This is useful for discovering parameters or hidden inputs that might otherwise be missed."
      let h39 = "Options:"
      let h40 = "Auto-submit forms with default or dummy data."
      let h41 = "Prompt for manual input (if sensitive forms, like login pages, need specific data)."
      let h42 = " Recommendation: Use the prompt option for forms that require authentication or other sensitive input."

      let h43 = " 4.3 Defining Scope"
      let h44 = "The spider should stay within the defined scope of your test. You can configure Burp Suite to ensure it only crawls the pages, directories, or domains within your scope and avoids crawling third-party links or external sites."
      let h45 = "You can set this in theScope section of the Spider configuration window."

      let h46 = "5. Viewing and Managing Spider Results"
      let h47 = "As Burp Suite crawls the application, the results will populate in theSite Map under theTarget tab. You can view and analyze the resources it discovers:"

      let h48 = "5.1 Inspecting Crawled URLs"
      let h49 = "Each endpoint discovered during spidering is added to the Site Map, giving you a structured, hierarchical view of the application\'s components."
      let h50 = "You can click on individual URLs to view the requests and responses, identify potential parameters, and see how data is passed between the client and server."

      let h51 = "5.2 Identifying Hidden Resources"
      let h52 = "The Spider often uncovers hidden pages, forms, or parameters that are not immediately obvious during manual browsing. These hidden resources can be useful for further security testing."
      let h53 = " Example: Finding admin panels or back-end API endpoints that aren’t linked from the main UI."

      let h54 = "5.3 Analyzing Parameters and Inputs"
      let h55 = "Spidering is useful for discovering all available parameters in the web application. Once Burp Suite identifies these, you can further test for potential vulnerabilities like SQL injection, cross-site scripting (XSS), or cross-site request forgery (CSRF)."

      let h56 = "6. Authentication and Session Management During Spidering"

      let h57 = " 6.1 Handling Login Forms"
      let h58 = "Burp Suite can spider authenticated areas of a web application by handling login forms. The Spider will prompt you for credentials when it encounters a login page."
      let h59 = "Once logged in, Burp Suite can maintain session state and continue spidering the protected areas."

      let h60 = " 6.2 Using Burp’s Session Handling"
      let h61 = "For complex login mechanisms (e.g., multi-factor authentication), you can configure session handling rules to automate login processes and maintain an active session during spidering."

      let h62 = "7. Spidering Best Practices"
      let h63 = "To make the most of spidering and avoid common issues, consider the following best practices:"

      let h64 = "7.1 Avoid Over-Spidering"
      let h65 = "Be careful not to spider beyond your target scope. Accidentally spidering third-party services or unnecessary areas of the site can waste time and trigger security defenses."

      let h66 = "7.2 Handle Sensitive Forms Manually"
      let h67 = "For login forms, password recovery pages, or payment gateways, manually inspect and handle these resources rather than relying on automated spidering. Automated submission could trigger account lockouts, fraud prevention mechanisms, or alerts."

      let h68 = "7.3 Combine with Manual Testing"
      let h69 = "The Spider is a great way to discover hidden content, but it’s not perfect. Always complement automated spidering with manual browsing and testing for a complete picture of the application’s structure."

      let h70 = "Conclusion"
      let h71 = "The Spider tool in Burp Suite is essential for discovering and mapping web application resources. It provides a comprehensive way to uncover hidden pages, parameters, and inputs, giving security testers the data they need to perform a thorough analysis of the web application\'s attack surface. By properly configuring the Spider, handling forms carefully, and combining it with manual exploration, you can ensure that no stone is left unturned during your security assessment."

    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                
                        Text2(title1: h1, title2: h2)

                                               Head(title: h3)

                                              

                                               Text8(title1: h4, title2: h5, title3: h6, title4: h7,title5: h8, title6: h9, title7: h10, title8: h11)

                                                 
                                                

                                                 Text4(title1: h12, title2: h13, title3: h14, title4: h15)

                                                 Head(title: h16)

                                                

                                                  Text10(title1: h17, title2: h18, title3: h19, title4: h20, title5: h21, title6: h22, title7: h23, title8: h24, title9: h25, title10: h26)

                                                  
                                                  

                                                   Text2(title1: h27, title2: h28)

                                                   

                                                   Text2(title1: h30, title2: h31)

                                                  

                                                   Text2(title1: h32, title2: h33)

                                                 

                                                   Text3(title1: h34, title2: h35, title3: h36)

                                                   

                                                  Text6(title1: h37, title2: h38, title3: h39, title4: h40, title5: h41, title6: h42)

                                                  

                                                   Text3(title1: h43, title2: h44, title3: h45)

                                                   

                                                   Text2(title1: h46, title2: h47)

                                                   

                                                   Text3(title1: h48, title2: h49, title3: h50)

                                                  

                                                   Text3(title1: h51, title2: h52, title3: h53)



                                                   Text2(title1: h54, title2: h55)

                                                   Head(title: h56)

                                                  

                                                   Text3(title1: h57, title2: h58, title3: h59)

                                                  

                                                   Text2(title1: h60, title2: h61)

                                                  

                                                   Text2(title1: h62, title2: h63)

                                                   
                                                   Text2(title1: h64, title2: h65)

                                                   
                                                  

                                                   Text2(title1: h66, title2: h67)

                                                    
                                                  

                                                   Text2(title1: h68, title2: h69)

                                                    
                                                  

                                                   Text2(title1: h70, title2: h71)




                        
                     
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
    B8()
}
