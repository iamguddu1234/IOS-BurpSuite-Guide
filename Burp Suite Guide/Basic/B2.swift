//
//  B2.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B2: View {
    
    
    let b1 = "2. Installation and Setup of Burp Suite"

    let b2 = "Installation and Setup of Burp Suite on Windows, macOS, and Linux"
    let b3 = "Burp Suite can be installed on a variety of operating systems, including Windows, macOS, and Linux. The setup process is similar across platforms, and here’s a step-by-step guide for each system."

    let b4 = "1. Installation and Setup on Windows"

    let b5 = "Step 1: Download Burp Suite"
    let b6 = "Go to the [PortSwigger official website](https://portswigger.net/burp) and download theBurp Suite Community Edition orProfessional Edition (if you have a license)."
    let b7 = "You can select the appropriate version for your system (32-bit or 64-bit) if needed."

    let b8 = "Step 2: Install Java (if required)"
    let b9 = "Burp Suite requires Java to run. If you don’t have Java installed, download and install the latest version of theJava Runtime Environment (JRE) orJava Development Kit (JDK) from the [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html) or useOpenJDK."
    let b10 = "After installation, verify Java installation by opening the Command Prompt and typing:"
    let b11 = "java -version"

    let b12 = "Step 3: Run Burp Suite"
    let b13 = "Once the download completes, run the installer (`.exe` file) and follow the installation instructions."
    let b14 = "After installation, Burp Suite will appear in your Start menu."
    let b15 = "Launch the application by clicking the Burp Suite icon."

    let b16 = "Step 4: Configure Your Browser"
    let b17 = "Burp Suite works by intercepting traffic, so you need to configure your browser to send traffic through Burp’s proxy. Set the proxy to `127.0.0.1` on port `8080` in your browser’s network settings."
    let b18 = "To intercept HTTPS traffic, install Burp’sCA certificate:"
    let b19 = "Go toProxy > Intercept > Open Browser."
    let b20 = "Download Burp’s CA certificate by visiting `http://burpsuite`."
    let b21 = "Import the certificate into your browser’s trust store."

    let b22 = "2. Installation and Setup on macOS"

    let b23 = "Step 1: Download Burp Suite"
    let b24 = "Visit the [PortSwigger official website](https://portswigger.net/burp) and download theBurp Suite Community Edition orProfessional Edition for macOS."

    let b25 = "Step 2: Install Java (if required)"
    let b26 = "Burp Suite requires Java to function. Most macOS systems come with Java pre-installed, but if needed, you can download the latest version ofJRE orJDK from the [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html) or useOpenJDK."
    let b27 = "To verify Java is installed, open the Terminal and run:"
    let b28 = "java -version"

    let b29 = "Step 3: Install Burp Suite"
    let b30 = "After downloading the `.dmg` file, double-click it to open the installer."
    let b31 = "Drag theBurp Suite icon into the Applications folder."

    let b32 = "Step 4: Run Burp Suite"
    let b33 = "Go to Applications and double-clickBurp Suite to launch the program."

    let b34 = "Step 5: Configure Browser"
    let b35 = "Configure your browser to proxy traffic through Burp by setting the proxy to `127.0.0.1` on port `8080`."
    let b36 = "For intercepting HTTPS traffic, install Burp’sCA certificate:"
    let b37 = "Open Burp Suite and go toProxy > Intercept > Open Browser."
    let b38 = "Download Burp’s CA certificate by visiting `http://burpsuite`."
    let b39 = "Import the certificate into your macOS keychain and set it toAlways Trust for all uses."

    let b40 = "3. Installation and Setup on Linux"

    let b41 = "Step 1: Download Burp Suite"
    let b42 = "Visit the [PortSwigger official website](https://portswigger.net/burp) and download the Linux version ofBurp Suite Community Edition orProfessional Edition."

    let b43 = "Step 2: Install Java (if required)"
    let b44 = "Burp Suite requires Java. You can install Java on Linux (Debian/Ubuntu-based systems) by running:"
    let b45 = "sudo apt update"
    let b46 = "sudo apt install default-jre"
    let b47 = "ForFedora/RHEL-based systems, you can run:"
    let b48 = "Verify Java installation with:"
    let b49 = "java -version"

    let b50 = "Step 3: Install Burp Suite"
    let b51 = "After downloading the `.sh` file (shell script), make the file executable by running:"
    let b52 = "chmod +x burpsuite_community_linux_vX.X.X.sh"
    let b53 = "Run the installer with:"
    let b54 = "./burpsuite_community_linux_vX.X.X.sh"
    let b55 = "Follow the instructions in the terminal to complete the installation."

    let b56 = "Step 4: Run Burp Suite"
    let b57 = "Launch Burp Suite by running the following command in the terminal:"
    let b58 = "Set your browser to proxy through Burp by configuring the proxy settings to `127.0.0.1:8080`."
    let b59 = "To intercept HTTPS traffic, install Burp’sCA certificate:"
    let b60 = "Go to Proxy > Intercept > Open Browser."
    let b61 = "Download the CA certificate by visiting `http://burpsuite`."
    let b62 = "Import it into your browser’s certificate store."
    let b63 = "Configuring Browser with Burp Suite Proxy"
    let b64 = "To intercept traffic, you need to configure your browser to use Burp Suite as a proxy. This setup is similar across all platforms:"

    let b65 = "1.Proxy Settings:"
    let b66 = "Set your browser’s proxy settings to127.0.0.1:8080."
    let b67 = "In Firefox: Go toSettings > Network Settings > Manual Proxy Configuration and setHTTP Proxy to `127.0.0.1` andPort to `8080`."
    let b68 = "In Chrome: Use an extension likeSwitchyOmega to configure a custom proxy."

    let b69 = "2.Install Burp Suite CA Certificate:"
    let b70 = "To capture HTTPS traffic, install Burp’s CA certificate to avoid SSL/TLS warnings."
    let b71 = "In your browser, navigate to `http://burpsuite` and download theCA Certificate."
    let b72 = "Import this certificate into your browser’s certificate store:"
    let b73 = "ForFirefox: Go toSettings > Privacy &amp; Security > Certificates > View Certificates > Import."
    let b74 = "ForChrome: Import the certificate through your operating system’s certificate manager."

    let b75 = "Conclusion"
    let b76 = "Burp Suite is easy to install on any platform with basic steps for downloading, configuring Java, and setting up the browser for traffic interception. Once installed, you can start testing web applications and analyzing traffic. Make sure to configure the proxy and install the CA certificate properly to capture all types of traffic (including HTTPS)."


    
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
    B2()
}
