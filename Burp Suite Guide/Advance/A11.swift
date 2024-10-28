//
//  A11.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct A11: View {
    
    
    let aa1 = "Using Burp Suite with Docker"

    let aa2 = "Using Burp Suite in a Docker container provides a flexible and isolated environment for web application security testing. This setup simplifies the installation process and allows for easy management of dependencies. Here’s a step-by-step guide on how to set up and use Burp Suite with Docker."

    let aa3 = "1. Prerequisites"

    let aa4 = "Before you start, ensure that you have the following:"
    let aa5 = "Docker Installed: Make sure Docker is installed and running on your machine. You can download it from the [official Docker website](https://www.docker.com/get-started)."
    let aa6 = "Burp Suite License: You need a valid license for Burp Suite Pro if you plan to use the professional features."

    let aa7 = "2. Pulling the Burp Suite Docker Image"
    let aa8 = "Burp Suite does not have an official Docker image, but you can use community-supported images. Here\'s how to pull an unofficial Docker image for Burp Suite:"
    let aa9 = "1.Open your terminal."
    let aa10 = "2.Pull the Docker image:"
    let aa11 = "docker pull portsentry/burpsuite"
    let aa12 = "This command pulls a community image of Burp Suite from Docker Hub."

    let aa13 = "3. Running Burp Suite in a Docker Container"
    let aa14 = "Once you have the image, you can run Burp Suite in a container. Here\'s how to do it:"

    let aa15 = "1.Run the Docker container:"
    let aa16 = "docker run -it --rm -p 8080:8080 portsentry/burpsuite"
    let aa17 = "`-it`: Runs the container in interactive mode."
    let aa18 = "`--rm`: Automatically removes the container when it exits."
    let aa19 = "`-p 8080:8080`: Maps port 8080 of the container to port 8080 on your host, allowing you to access the Burp Suite proxy."

    let aa20 = "2.Launch Burp Suite:"
    let aa21 = "Once the container is running, Burp Suite should start automatically. You can now access it through your web browser."

    let aa22 = "4. Accessing Burp Suite"

    let aa23 = "1.Open Your Browser:"
    let aa24 = "Navigate to `http://localhost:8080` to access the Burp Suite web interface."

    let aa25 = "2.Configure Proxy Settings:"
    let aa26 = "Ensure your browser is configured to route traffic through Burp Suite’s proxy (default is `localhost:8080`)."

    let aa27 = "5. Using Burp Suite Features"
    let aa28 = "With Burp Suite running in Docker, you can use all its features as you would normally, including:"
    let aa29 = "Proxy: Capture and analyze HTTP/S traffic."
    let aa30 = "Scanner: Scan for vulnerabilities in web applications."
    let aa31 = "Intruder: Perform automated attacks on applications."
    let aa32 = "Repeater: Send requests and analyze responses manually."

    let aa33 = "6. Saving Your Work"
    let aa34 = "If you make significant changes or want to save your settings and configurations:"

    let aa35 = "1.Use Volumes:"
    let aa36 = "When running the Docker container, you can mount a volume to persist data. For example:"
    let aa37 = "docker run -it --rm -p 8080:8080 -v /path/to/local/directory:/home/burpsuite portsentry/burpsuite"
    let aa38 = "Replace `/path/to/local/directory` with a path on your host machine where you want to save Burp Suite\'s configuration and data."

    let aa39 = "7. Stopping the Container"

    let aa40 = "1.Exit Burp Suite:"
    let aa41 = "When you’re done, you can simply close the Burp Suite interface."

    let aa42 = "2.Stop the Container:"
    let aa43 = "If you are using `--rm`, the container will automatically remove itself upon exit. If not, you can manually stop it with:"
    let aa44 = "docker ps        # Find the container ID"
    let aa45 = "docker stop container_id"

    let aa46 = "8. Troubleshooting"
    let aa47 = "Port Conflicts: If you encounter issues with port conflicts, make sure no other services are running on port 8080."
    let aa48 = "Image Issues: If the pulled image does not work as expected, consider looking for alternative community images or building your own Dockerfile for Burp Suite."

    let aa49 = "9. Conclusion"
    let aa50 = "Running Burp Suite in Docker provides a convenient and isolated environment for web application security testing. This setup allows you to manage dependencies and configurations easily while maintaining a clean local environment. By following this guide, you can effectively leverage the power of Burp Suite for your security assessments in a Docker container."

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
    A11()
}
