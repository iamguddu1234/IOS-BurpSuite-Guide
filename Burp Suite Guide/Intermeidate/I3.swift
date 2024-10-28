//
//  I3.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct I3: View {
    
    let q1 = "Using the Comparer Tool in Burp Suite"
    let q2 = "TheComparer Tool in Burp Suite is designed to allow users to perform a side-by-side comparison of different requests, responses, or other data sets. This tool is particularly useful when analyzing the differences between server responses to various inputs, or when comparing two requests to detect changes in behavior, content, or status codes."

    let q3 = "Here’s a detailed guide on how to use the Comparer tool effectively:"

    let q4 = "1. Overview of the Comparer Tool"
    let q5 = "TheComparer Tool is a utility that enables you to compare two items in Burp Suite (such as HTTP requests, responses, or other data) at a byte-by-byte level. It\'s often used to:"
    let q6 = "Compare HTTP requests/responses: To find the differences in server behavior between similar requests."
    let q7 = "Detect subtle changes: Such as variations in the headers, body content, cookies, etc."
    let q8 = "Identify vulnerabilities: By comparing different attack payloads and their corresponding responses."

    let q9 = "2. How to Access the Comparer Tool"
    let q10 = "You can access theComparer Tool in two primary ways:"

    let q11 = "Method 1: From the Right-Click Context Menu"
    let q12 = "Select an item (e.g., a request or response) from any Burp Suite tab (such asProxy orRepeater)."
    let q13 = "Right-click the item and choose `Send to Comparer` from the context menu."
    let q14 = "Repeat the process with a second item you wish to compare."

    let q15 = "Method 2: From the Top Menu"
    let q16 = "Click theComparer tab from the top panel in Burp Suite."
    let q17 = "You can manually paste or send items (requests, responses, etc.) into the Comparer Tool for analysis."

    let q18 = "3. Steps to Compare Requests/Responses"
    let q19 = "Here’s a step-by-step process to use the Comparer tool:"

    let q20 = "Step 1: Capturing Traffic"
    let q21 = "Make sure Burp Suite\'sProxy is running, and your browser is configured to send traffic through it."
    let q22 = "Navigate through the web application to capture traffic, and use Burp Suite’s HTTP history to select the requests or responses you want to compare."

    let q23 = "Step 2: Sending Items to Comparer"
    let q24 = "Select the first HTTP request or response you wish to compare."
    let q25 = "Right-click the item and choose `Send to Comparer`."
    let q26 = "Now, select the second HTTP request or response and again choose `Send to Comparer`."

    let q27 = "Step 3: Performing the Comparison"
    let q28 = "Navigate to theComparer tab."
    let q29 = "You\'ll see two sections:Left andRight, where the two selected items are displayed side-by-side."
    let q30 = "Burp Suite highlights the differences between the two items, making it easy to spot variations in the data."

    let q31 = "4. Understanding the Comparison Output"
    let q32 = "Burp Suite highlights the differences between the two items, with a focus on various sections like headers, status codes, and body content. You can analyze:"
    let q33 = "Status Code Differences: For instance, comparing a `200 OK` response with a `404 Not Found` or `500 Internal Server Error`."
    let q34 = "Header Differences: Variations in cookies, security headers, content types, etc."
    let q35 = "Body Differences: Differences in HTML, JSON, or other data formats."
    let q36 = "Each change is highlighted to make it easier to identify the relevant information."

    let q37 = "5. Example Use Cases"

    let q38 = "Use Case 1: Comparing Responses to Different Payloads"
    let q39 = "When testing for vulnerabilities like SQL injection or Cross-Site Scripting (XSS), you might want to see how different payloads affect the server response."
    let q40 = "After sending a benign request and a malicious one, you can use the Comparer to easily spot differences in the server\'s behavior, error messages, or output."

    let q41 = "Use Case 2: Analyzing Server Responses to Authentication Attempts"
    let q42 = "Compare the HTTP responses to valid and invalid login attempts."
    let q43 = "This can help you detect information leaks, such as detailed error messages that reveal whether a username or password is incorrect, which can be used for brute force attacks."

    let q44 = "Use Case 3: Observing Changes in Application State"
    let q45 = "You can compare requests made before and after certain user interactions (like logging in, making a purchase, or changing account settings) to see how the application behaves in different states."

    let q46 = "6. Additional Tips for Using the Comparer Tool"
    let q47 = "Use Filters: When comparing large data sets, such as long HTML pages or JSON responses, you can filter out noise and focus on specific parts (e.g., headers only)."
    let q48 = "Apply to Different Data: The Comparer tool isn\'t limited to HTTP requests or responses; you can also compare any type of raw data you capture in Burp Suite."

    let q49 = "7. Conclusion"
    let q50 = "The Comparer Tool in Burp Suite is an excellent resource for identifying subtle differences between requests and responses. Whether you\'re testing for security vulnerabilities, analyzing session handling, or tracking how the server reacts to different inputs, this tool helps to isolate and highlight variations that might be important for your security assessment."
    let q51 = "By mastering the Comparer tool, you can improve your efficiency in identifying issues, debugging application behaviors, and conducting thorough security testing."

    
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
    I3()
}
