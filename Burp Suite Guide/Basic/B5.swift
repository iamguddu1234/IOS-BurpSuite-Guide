//
//  B5.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B5: View {
    
    let e1 = "5.Capturing HTTP/S Traffic"
    
    let e2 = "Capturing HTTP/S Traffic with Burp Suite"
    let e3 = "One of Burp Suite’s core functionalities is its ability to capture and inspect HTTP and HTTPS traffic between a web browser (or client application) and a web server. This allows penetration testers, security professionals, or developers to examine the communication between their browser and a web application for vulnerabilities and other security issues."
    
    let e4 = "Here’s how you can capture HTTP and HTTPS traffic using Burp Suite:"
    
    let e5 = "1. Setting Up the Proxy Listener in Burp Suite"
    let e6 = "Burp Suite’sProxy tool enables interception of all HTTP(S) traffic. By default, Burp listens on a local proxy server to capture all browser requests."
    
    let e7 = "1.1 Verifying Proxy Listener"
    let e8 = "Go to the Proxy tab and click onOptions."
    let e9 = "In the Proxy Listeners section, ensure there is an entry for `127.0.0.1:8080` (localhost). This means Burp is listening for traffic on port 8080 of your local machine."
    let e10 = "If it’s not present, clickAdd and set:"
    let e11 = "Bind to port: `8080`"
    let e12 = "Bind to address: `127.0.0.1`"
    let e13 = "Make sure the checkbox is selected toEnable the listener."
    
    let e14 = "2. Configuring Your Browser to Use Burp Proxy"
    let e15 = "For Burp Suite to intercept and capture web traffic, your browser must be configured to route its traffic through Burp’s proxy."
    
    let e16 = "2.1 Browser Proxy Settings"
    let e17 = "To manually configure your browser to route traffic through Burp Suite:"
    let e18 = "Set theHTTP Proxy to `127.0.0.1` andPort to `8080`."
    
    let e19 = "Google Chrome or Mozilla Firefox:"
    let e20 = "1.Chrome: Navigate toSettings >System >Open your computer’s proxy settings."
    let e21 = "2.Firefox: Go toSettings >General >Network Settings and clickSettings."
    let e22 = "3. SetManual proxy configuration:"
    let e23 = "HTTP Proxy: `127.0.0.1`"
    let e24 = "Port: `8080`"
    let e25 = "Use the same proxy forHTTPS."
    
    let e26 = "4. Save and restart the browser."
    let e27 = " Using FoxyProxy:"
    let e28 = " FoxyProxy is a browser extension that allows easy proxy switching."
    let e29 = " Install the FoxyProxy extension from the browser store."
    let e30 = "Configure FoxyProxy to use the Burp Proxy at `127.0.0.1:8080` when active."
    
    let e31 = " 3. Installing Burp’s CA Certificate for HTTPS Interception"
    let e32 = "When intercepting HTTPS traffic, Burp Suite generates its own SSL certificates to intercept secure communications. To prevent SSL errors in your browser, you need to install Burp’s CA certificate."
    
    let e33 = "3.1 Downloading the CA Certificate"
    let e34 = "Open your browser and visit `http://burpsuite` (this URL works only when Burp is running)."
    let e35 = "Download the CA certificate by clicking on CA Certificate."
    
    let e36 = "3.2 Installing the CA Certificate"
    let e37 = "Google Chrome:"
    let e38 = "Go to Settings >Privacy and Security >Security >Manage Certificates >Authorities tab."
    let e39 = "Import the certificate and check the box to trust it for identifying websites."
    
    let e40 = "Mozilla Firefox:"
    let e41 = "Go toSettings >Privacy &amp; Security >Certificates >View Certificates >Authorities tab."
    let e42 = "Click Import and select the downloaded CA certificate."
    let e43 = " After installation, Burp Suite will be able to intercept and decrypt HTTPS traffic."
    
    let e44 = "4. Intercepting and Capturing HTTP and HTTPS Traffic"
    let e45 = "Once your browser is configured, and the CA certificate is installed, you can start intercepting and capturing traffic."
    
    let e46 = "4.1 Enabling Interception"
    let e47 = "Go to theProxy tab in Burp Suite and click onIntercept."
    let e48 = "Make sureIntercept is on. If it is off, Burp Suite will not capture traffic."
    
    let e49 = "4.2 Capturing HTTP Requests"
    let e50 = "As you browse, all HTTP(S) requests will be intercepted by Burp Suite."
    let e51 = "You can view each intercepted request in the Intercept tab."
    let e52 = "From here, you can:"
    let e53 = "Forward: Send the request to the server as-is."
    let e54 = "Drop: Stop the request from reaching the server."
    let e55 = "Modify: Edit the request before forwarding it."
    
    let e56 = "4.3 Viewing HTTP(S) History"
    let e57 = "All captured requests and responses are stored in HTTP history under theProxy tab."
    let e58 = "You can review the requests and responses after they’ve been forwarded or processed."
    let e59 = "Analyze the full request headers, parameters, cookies, and response content for potential security issues."
    
    let e60 = "4.4 Intercepting HTTPS Traffic"
    let e61 = "Once the CA certificate is properly installed, Burp Suite will intercept HTTPS traffic."
    let e62 = "HTTPS traffic will appear in theHTTP history, and Burp will decrypt the data for inspection and modification."
    
    let e63 = "5. Testing and Analyzing Intercepted Traffic"
    let e64 = "Once traffic is captured, Burp Suite allows you to test and analyze the captured requests:"
    
    let e65 = "5.1 Modifying HTTP(S) Requests"
    let e66 = "When intercepting requests, you can modify any part of the request before forwarding it to the server."
    let e67 = "Common modifications include:"
    let e68 = "Changing query parameters."
    let e69 = "Manipulating headers (e.g., cookies, user-agent)."
    let e70 = "Altering POST data (e.g., form fields)."
    
    let e71 = "5.2 Inspecting Responses"
    let e72 = "Burp Suite allows you to view responses from the server."
    let e73 = "You can inspect:"
    let e74 = "Response headers (e.g., status codes, content types)."
    let e75 = "Response body (e.g., HTML, JSON, XML)."
    let e76 = "Modify the server’s response before forwarding it to the browser (useful for testing client-side vulnerabilities)."
    
    let e77 = "5.3 Testing for Vulnerabilities"
    let e78 = "Use Burp Suite’s Repeater tool to manually send modified requests repeatedly."
    let e79 = "UseIntruder for automated attacks like brute-forcing form fields."
    let e80 = "Combine these tools to test for vulnerabilities such as SQL injection, cross-site scripting (XSS), and authentication bypass."
    
    let e81 = "6. Capturing Traffic from Mobile Devices"
    let e82 = "You can also capture HTTP/S traffic from mobile devices (Android or iOS) by configuring them to route traffic through Burp’s proxy:"
    
    let e83 = "6.1 Android"
    let e84 = "Connect the mobile device to the same Wi-Fi network as your machine running Burp Suite."
    let e85 = "Go to Wi-Fi Settings on the Android device, select the network, and set the proxy toManual:"
    let e86 = "Proxy host: `192.168.x.x` (your computer’s IP address)."
    let e87 = "Proxy port: `8080`."
    let e88 = "Install the Burp CA certificate on the mobile device for HTTPS interception."
    
    let e89 = "6.2 iOS"
    let e90 = "Similar to Android, configure the iOS device to use your computer’s IP address and port `8080` as the proxy."
    let e91 = "Install the Burp CA certificate on the iOS device by navigating to `http://burpsuite` in Safari."
    
    let e92 = "Conclusion"
    let e93 = "By configuring Burp Suite to intercept and capture HTTP/S traffic, you gain full visibility into the communication between your browser (or other clients) and web servers. This enables thorough security testing, allowing you to examine, manipulate, and test web application traffic for vulnerabilities, making Burp Suite a powerful tool in web security assessment."
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                  
                        
                        
                        
                        Text2(title1: e2, title2: e3)
                        
                        Head(title: e4)
                        
                        
                        
                        Text2(title1: e5, title2: e6)
                        
                        
                        
                        Text7(title1: e7, title2: e8, title3: e9, title4: e10, title5: e11, title6: e12, title7: e13)
                        
                        
                        
                        
                        Text2(title1: e14, title2: e15)
                        
                        
                        
                        Text3(title1: e16, title2: e17, title3: e18)
                        
                        
                        
                        
                        Text7(title1: e19, title2: e20, title3: e21, title4: e22,title5: e23, title6: e24, title7: e25)
                        
                        
                        
                        
                        
                        Text5(title1: e26, title2: e27, title3: e28, title4: e29, title5: e30)
                        
                        
                        
                        Text2(title1: e31,title2: e32)
                        
                        
                        
                        Text3(title1: e33,title2: e34, title3: e35)
                        
                        
                        
                        Text4(title1: e36, title2: e37, title3: e38, title4: e39)
                        
                        
                        
                        Text4(title1: e40, title2: e41, title3: e42, title4: e43)
                        
                        
                        
                        Text2(title1: e44, title2: e45)
                        
                        
                        
                        Text3(title1: e46, title2: e47, title3: e48)
                        
                        
                        
                        Text7(title1: e49, title2: e50, title3: e51, title4: e52,title5: e53, title6: e54, title7: e55)
                        
                        
                        
                        
                        Text4(title1: e56, title2: e57, title3: e58, title4: e59)
                        
                        
                        Text3(title1: e60, title2: e61, title3: e62)
                        
                        
                        
                        Text2(title1: e63, title2: e64)
                        
                        
                        
                        Text6(title1: e65, title2: e66, title3: e67, title4: e68, title5: e69, title6: e70)
                        
                        
                        
                        
                        
                        Text6(title1: e71, title2: e72, title3: e73,title4: e74, title5: e75, title6: e76)
                        
                        
                        
                        
                        
                        Text4(title1: e77, title2: e78, title3: e79, title4: e80)
                        
                        
                        
                        Text2(title1: e81, title2: e82)
                        
                        
                        
                        Text6(title1: e83, title2: e84, title3: e85,title4: e86, title5: e87, title6: e88)
                        
                        
                        
                        
                        
                        Text3(title1: e89, title2: e90, title3: e91)
                        
                        
                        
                        
                        Text2(title1: e92, title2: e93)
                        
                        
                        
                        
                        
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
    B5()
}
