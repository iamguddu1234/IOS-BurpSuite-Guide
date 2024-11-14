//
//  B6.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B6: View {
    
    let f1 = "6.Interception and Modifying Requests"
    
    let f2 = "Interception and Modifying Requests with Burp Suite"
    let f3 = "One of the core features of Burp Suite is the ability to intercept and modify HTTP and HTTPS requests before they reach the web server. This allows security professionals to manipulate and test how web applications respond to different inputs, identifying potential vulnerabilities like SQL injection, cross-site scripting (XSS), and more."
    
    let f4 = "Here\'s a detailed guide on how to intercept and modify requests in Burp Suite:"
    
    let f5 = "1. Enabling Interception in Burp Suite"
    let f6 = "By default, Burp Suite allows you to intercept HTTP/S requests and responses manually before they reach the target server or client."
    
    let f7 = "1.1 Turning Interception On"
    let f8 = "Open Burp Suite and navigate to theProxy tab."
    let f9 = "In the Intercept sub-tab, ensure that Intercept is on. This allows Burp to capture and hold every outgoing request."
    let f10 = "If Intercept is off, click the button to toggle icon."
    let f11 = "![Intercepting traffic](https://user-images.githubusercontent.com/45586863/52650965-48d10380-2f19-11e9-99a7-f3b52a119313.png)"
    
    let f12 = "1.2 Capturing a Request"
    let f13 = "When a browser or client makes a request, Burp Suite will intercept it and display the full HTTP request in theIntercept tab."
    let f14 = " This request will show the URL, method, headers, cookies, and body content (for POST requests)."
    
    let f15 = "2. Modifying Requests"
    let f16 = "Once a request is intercepted, you can modify any aspect of it before forwarding it to the server. This is useful for testing how different inputs affect the web application."
    
    let f17 = "2.1 Editing URL, Parameters, and Headers"
    let f18 = " URL: You can modify the URL path, query parameters, or entire endpoint to test for broken access controls or parameter tampering."
    let f19 = "Query Parameters: Manually change parameters in GET requests to see if the server processes them in unexpected ways."
    let f20 = "Headers: Modify HTTP headers such as `User-Agent`, `Cookies`, `Authorization`, or `Referer` to check how the server responds to different or invalid headers."
    let f21 = "For example, you could modify the `User-Agent` to mimic a different browser or client."
    let f22 = "Change or delete cookies to test how session handling works."
    
    let f23 = "2.2 Editing POST Data"
    let f24 = "If the intercepted request is a POST request, you can edit the form data or JSON body to send modified inputs."
    let f25 = "Example use cases:"
    let f26 = "Test invalid or out-of-range input data to check for input validation."
    let f27 = "Insert special characters or payloads to test for SQL injection or XSS vulnerabilities."
    let f28 = "Alter the amount in an e-commerce transaction to see if improper validation allows manipulation."
    
    let f29 = "2.3 Example Modification"
    let f30 = "Suppose you are testing a login form that sends the following request:"
    let f31 = "POST /login HTTP/1.1"
    let f32 = "Host: example.com"
    let f33 = "Content-Type: application/x-www-form-urlencoded"
    let f34 = "Cookie: sessionid=abc123"
    let f35 = "username=user&amp;password=pass123"
    let f36 = "You can modify the `username` or `password` fields to test the server’s response:"
    let f37 = "Change the `username` to `admin`."
    let f38 = "Modify the password field to an SQL injection payload like `\' OR \'1\'=\'1`."
    let f39 = "Edit the `Cookie` header to attempt session hijacking."
    
    let f40 = "3. Forwarding or Dropping Requests"
    let f41 = "After making modifications, you can choose to either forward the request to the server or drop it:"
    
    let f42 = "3.1 Forwarding the Request"
    let f43 = "Once you have modified the request as needed, click Forward in the Intercept tab."
    let f44 = "This sends the modified request to the server for processing."
    let f45 = "The server’s response can be viewed in theHTTP history under theProxy tab, where you can inspect how it handled the manipulated request."
    
    let f46 = "3.2 Dropping the Request"
    let f47 = "If you want to prevent the request from reaching the server (for example, if it\'s part of a test and you don’t want to execute it), clickDrop."
    let f48 = "Dropping a request prevents the browser from receiving any response."
    
    let f49 = "4. Real-Time Testing with Repeater"
    let f50 = "While interception is powerful for making on-the-fly modifications, Burp Suite’sRepeater tool is ideal for repeated or advanced testing of specific requests."
    
    let f51 = "4.1 Sending Requests to Repeater"
    let f52 = "Right-click on any intercepted request and select Send to Repeater."
    let f53 = "In the Repeater tab, you can modify the request as many times as needed and resend it to the server without having to capture it again."
    let f54 = "This is useful for testing different payloads and observing server responses in real time."
    
    let f55 = "4.2 Benefits of Repeater"
    let f56 = "Modify and resend the same request with different inputs to explore different vulnerabilities."
    let f57 = "Compare the server’s responses to different types of attacks."
    let f58 = "You can keep a log of multiple variations of requests and responses for analysis."
    
    let f59 = "5. Automating Attacks with Intruder"
    let f60 = "For automating the modification and sending of multiple requests, Burp Suite’sIntruder tool is incredibly useful."
    
    let f61 = "5.1 Sending Requests to Intruder"
    let f62 = "Right-click on any intercepted request and select Send to Intruder."
    let f63 = "In Intruder, you can automate attacks by specifying multiple payloads (e.g., usernames, passwords) to test in various positions of the request."
    
    let f64 = "5.2 Payload Injection"
    let f65 = "Intruder allows you to define multiple payloads and set positions in the request where those payloads will be inserted."
    let f66 = "This can be used for brute-force attacks, testing for weak input validation, or fuzzing to find vulnerabilities."
    
    let f67 = "6. Analyzing Server Responses"
    let f68 = "Once you have modified and sent a request to the server, you can analyze the server’s response for various security implications."
    
    let f69 = "6.1 Viewing Response in Proxy"
    let f70 = "After forwarding the request, go to theHTTP history sub-tab under theProxy tab."
    let f71 = "You can view both the request and response here, including headers, status codes, and the response body."
    let f72 = "Analyze the server’s response to see if the modifications revealed any security flaws or unexpected behavior."
    
    let f73 = "6.2 Testing with Repeater"
    let f74 = "Continue to analyze the server\'s response and, if needed, refine your requests usingRepeater to test further modifications."
    let f75 = "Repeater also allows you to observe how different variations of your requests affect server responses."
    
    let f76 = "7. Practical Use Cases"
    let f77 = "Interception and modification of requests can reveal various vulnerabilities, including:"
    let f78 = "Broken Authentication: Manipulating login requests to bypass authentication controls."
    let f79 = "Parameter Tampering: Modifying query parameters to gain unauthorized access to resources."
    let f80 = "Cross-Site Scripting (XSS): Inserting malicious scripts in input fields to test for reflected or stored XSS."
    let f81 = "SQL Injection: Altering input fields to inject SQL queries and retrieve or manipulate data."
    
    let f82 = "Conclusion"
    let f83 = "By intercepting and modifying HTTP and HTTPS requests in Burp Suite, you gain deep insight into how a web application handles various inputs and how it communicates with the client. This feature is crucial for security testing and helps identify a wide range of vulnerabilities, from simple logic flaws to severe issues like injection attacks."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        
                        
                        
                        
                        Text2(title1: f2, title2: f3)
                        
                        Head(title: f4)
                        
                        
                        
                        Text2(title1: f5, title2: f6)
                        
                        
                        
                        Text5(title1: f7, title2: f8, title3: f9, title4: f10, title5: f11)
                        
                        
                        
                        
                        Text3(title1: f12, title2: f13, title3: f14)
                        
                        
                        
                        
                        Text2(title1: f15, title2: f16)
                        
                        
                        
                        
                        Text6(title1: f17, title2: f18, title3: f19, title4: f20, title5: f21, title6: f22)
                        
                        
                        
                        
                        Text6(title1: f23, title2: f24, title3: f25, title4: f26, title5: f27, title6: f28)
                        
                        
                        
                        Text11(title1: f29, title2: f30, title3: f31, title4: f32, title5: f33, title6: f34,title7: f35, title8: f36, title9: f37, title10: f38, title11: f39)
                        
                        
                        
                        
                        
                        Text2(title1: f40, title2: f41)
                        
                        
                        
                        Text4(title1: f42, title2: f43, title3: f44, title4: f45)
                        
                        
                        
                        Text3(title1: f46, title2: f47, title3: f48)
                        
                        
                        
                        Text2(title1: f49, title2: f50)
                        
                        
                        
                        Text4(title1: f51, title2: f52, title3: f53, title4: f54)
                        
                        
                        
                        Text4(title1: f55, title2: f56, title3: f57, title4: f58)
                        
                        
                        
                        Text2(title1: f59, title2: f60)
                        
                        
                        
                        Text3(title1: f61, title2: f62, title3: f63)
                        
                        
                        
                        Text3(title1: f64, title2: f65, title3: f66)
                        
                        
                        
                        Text2(title1: f67, title2: f68)
                        
                        
                        
                        Text4(title1: f69, title2: f70, title3: f71, title4: f72)
                        
                        
                        Text3(title1: f73, title2: f74, title3: f75)
                        
                        
                        
                        Text6(title1: f76, title2: f77, title3: f78, title4: f79, title5: f80, title6: f81)
                        
                        
                        
                        Text2(title1: f82, title2: f83)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
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
    B6()
}
