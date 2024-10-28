//
//  B4.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B4: View {
    
    
    let d1 = "4.Working with Proxy Settings"

    let d2 = "Working with Proxy Settings in Burp Suite"
    let d3 = "TheProxy tab is one of the most critical components of Burp Suite. It enables you to intercept, inspect, and modify web traffic between your browser and the target application. This allows you to analyze how an application processes data and how you can exploit vulnerabilities by manipulating HTTP(S) requests and responses."

    let d4 = "Here’s a detailed guide on how to configure and work with Burp Suite’s proxy settings:"

    let d5 = "1. Configuring Your Browser to Work with Burp Suite’s Proxy"
    let d6 = "Before using Burp Suite to intercept traffic, you must configure your browser to route its traffic through Burp’s proxy listener. Here’s how to set this up:"

    let d7 = "1.1 Default Proxy Listener in Burp"
    let d8 = "Burp Suite listens on a specific port (by default, `127.0.0.1:8080` or `localhost:8080`) to capture traffic."
    let d9 = "You can verify or modify the default listener by navigating to:"
    let d10 = "Proxy >Options >Proxy Listeners"
    let d11 = "You’ll see a listener configured for `127.0.0.1:8080`."

    let d12 = "1.2 Browser Proxy Configuration"
    let d13 = "You must configure your browser to send traffic through Burp’s proxy. Below are steps for popular browsers:"
    let d14 = "Google Chrome or Firefox"

    let d15 = "1. Open your browser’s Network Settings:"
    let d16 = "Chrome: Go to Settings >Advanced >System >Open your computer’s proxy settings."
    let d17 = "Firefox: Go to Settings >General >Network Settings >Settings."

    let d18 = "2. Manually configure the proxy settings:"
    let d19 = "HTTP Proxy: `127.0.0.1`"
    let d20 = "Port: `8080`"
    let d21 = "Enable proxy forHTTPS as well."

    let d22 = "3. Save the settings and restart your browser if necessary."
    let d23 = "Using FoxyProxy (Chrome/Firefox)"
    let d24 = " Install FoxyProxy extension from the browser’s extension store."
    let d25 = " Configure FoxyProxy with the following settings:"
    let d26 = "IP: `127.0.0.1`"
    let d27 = "Port: `8080`"
    let d28 = "Choose when to enable/disable the proxy with a click."

    let d29 = "1.3 Burp Suite CA Certificate Installation (for HTTPS)"
    let d30 = "To intercept HTTPS traffic, Burp Suite uses a self-signedCA (Certificate Authority) Certificate. Browsers will flag this as untrusted unless you install the certificate."
    let d31 = "Steps to install Burp\'s CA certificate:"
    let d32 = "1. Open Burp Suite and go toProxy >Options >Import / export CA certificate."
    let d33 = "2. In the browser, navigate to `http://burpsuite` and download the CA certificate."
    let d34 = "3. Install the certificate in your browser as aTrusted Certificate Authority:"
    let d35 = "Chrome: Go to Settings >Privacy and Security >Security >Manage Certificates >Authorities tab >Import."
    let d36 = "Firefox: Go to Settings >Privacy &amp; Security >Certificates >View Certificates >Import."

    let d37 = "2. Intercepting and Modifying HTTP(S) Traffic"
    let d38 = " Once your proxy is set up, you can start intercepting and modifying requests and responses. Here’s how to do it:"

    let d39 = "2.1 Intercept Requests"
    let d40 = "Go to the Proxy tab and select Intercept."
    let d41 = "Ensure Intercept is on. This will capture all traffic between your browser and the web server."
    let d42 = "When a request is intercepted, it will appear in Burp Suite, allowing you to:"
    let d43 = "Forward: Send the request to the server as-is."
    let d44 = "Drop: Prevent the request from being sent."
    let d45 = "Edit: Modify the request before sending it to the server."

    let d46 = "2.2 Modify Requests"
    let d47 = "With a captured request, you can edit:"
    let d48 = "URL: Modify the endpoint or query parameters."
    let d49 = "Headers: Change HTTP headers, such as cookies or user-agent."
    let d50 = "Body: Manipulate form data, JSON, XML, or any other request body data."
    let d51 = "After making changes, clickForward to send the modified request."

    let d52 = "2.3 View and Modify Responses"
    let d53 = "You can also intercept responses from the server and modify them before they reach the browser. This is useful for testing client-side security measures or altering responses for tampering tests."

    let d54 = "3. Using Proxy History for Analysis"
    let d55 = "Burp Suite keeps track of all intercepted traffic in theHTTP History sub-tab underProxy. Here’s how to work with it:"

    let d56 = "3.1 HTTP History"
    let d57 = "Every request and response that passes through the proxy is logged inHTTP history."
    let d58 = "You can filter the history based on HTTP methods (GET, POST, etc.), response codes, MIME types, etc."
    let d59 = "Clicking on any entry opens the full request and response for detailed inspection."
    let d60 = "You can right-click on any request to:"
    let d61 = "Send to Repeater: For manual modification and replay."
    let d62 = "Send to Intruder: For automated attacks."
    let d63 = "Copy URL or other details for documentation."

    let d64 = "3.2 WebSocket History"
    let d65 = " If the application uses WebSockets, Burp Suite can intercept and log WebSocket messages."
    let d66 = "These are shown under the WebSockets sub-tab, where you can view real-time communication over WebSockets and modify messages."

    let d67 = "4. Proxy Options Configuration"
    let d68 = "Burp Suite offers extensive options to fine-tune the proxy’s behavior. These options can be found underProxy >Options:"

    let d69 = " 4.1 Intercept Client Requests"
    let d70 = "You can set rules to determine what type of traffic is intercepted (or ignored)."
    let d71 = "For example, you can choose to:"
    let d72 = "Intercept only in-scope traffic."
    let d73 = "Automatically forward traffic to certain URLs."

    let d74 = "4.2 Match and Replace"
    let d75 = "Burp allows you to automatically match specific patterns in requests or responses and replace them with predefined values."
    let d76 = "This is useful for large-scale testing or when working with repeating data (e.g., replacing a cookie value for all requests)."

    let d77 = "4.3 Invisible Proxying"
    let d78 = "The Invisible Proxy mode allows Burp Suite to work with non-proxy-aware clients."
    let d79 = "This can be helpful when working with mobile apps or thick-client applications that don’t natively support proxy configuration."

    let d80 = " 4.4 Upstream Proxies"
    let d81 = " If your network uses a proxy server, Burp Suite can be configured to route traffic through it. This is set up in theUpstream Proxy Servers section."

    let d82 = "5. Working with Mobile Devices"
    let d83 = "You can use Burp Suite to intercept traffic from mobile apps. Here’s how to set it up for Android and iOS:"

    let d84 = "5.1 Android"
    let d85 = "Connect your Android device to the same Wi-Fi network as your computer."
    let d86 = "On your Android device, set the Wi-Fi connection’s proxy settings to `Burp Proxy` (IP `127.0.0.1`, Port `8080`)."
    let d87 = "Install Burp’s CA certificate on the device by copying it to the device and installing it underSecurity settings."

    let d88 = "5.2 iOS"
    let d89 = "Connect the iOS device to the same network as your computer."
    let d90 = "Set up the Wi-Fi proxy in the network settings (same as Android)."
    let d91 = "Install Burp’s CA certificate on iOS by navigating to `http://burpsuite` in the Safari browser and downloading the certificate."

    let d92 = "6. Troubleshooting Proxy Issues"
    let d93 = "Sometimes, things may not work as expected. Here are common issues and solutions:"

    let d94 = "6.1 SSL/TLS Errors"
    let d95 = "If you encounter SSL/TLS certificate errors, make sure the Burp CA certificate is correctly installed in your browser or device."
    let d96 = "Check if Burp is configured to interceptHTTPS traffic."

    let d97 = "6.2 No Traffic Captured"
    let d98 = " Ensure your browser’s proxy settings are correctly set to `127.0.0.1:8080`."
    let d99 = "Check if Burp’s intercept feature is enabled."
    let d100 = "Verify that the traffic you are trying to capture falls within Burp’s scope."

    let d101 = "6.3 Application Stops Working with Proxy"
    let d102 = "Some applications may block traffic if they detect a proxy or untrusted certificates. In such cases:"
    let d103 = "Use Burp’sInvisible Proxy feature."
    let d104 = "Investigate app-specific settings for handling proxies."

    let d105 = "Conclusion"
    let d106 = "Working with Burp Suite’s proxy is fundamental for intercepting and analyzing web traffic. By setting up your browser or mobile device to route traffic through Burp, you gain deep visibility into how a web application communicates, allowing you to test its security and identify vulnerabilities. From modifying requests to analyzing HTTP history, the proxy feature is essential for comprehensive web application security testing."

    
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
    B4()
}
