//
//  MainBasic.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie
import Google_Mobile_Ads_SDK



struct MainIntermediate: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    @StateObject private var interstitialAdManager = InterstitialAdManager()
    @StateObject private var adManager = InterstitialAdManager()
    
    
    
    
    var body: some View {
        
        
        
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                    
                    LottieView(animationName: "a", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewI1(showTabBar: $showTabBar,interstitialAdManager: interstitialAdManager, adManager: adManager)
                        .frame(height: 220) // or use a specific height
                    
                    ListViewI2(showTabBar: $showTabBar,interstitialAdManager: interstitialAdManager, adManager: adManager)
                        .frame(height: 220) // or use a specific height
                    
                    ListViewI3(showTabBar: $showTabBar,interstitialAdManager: interstitialAdManager, adManager: adManager)
                        .padding(.vertical, 0)
                        .frame(height: 180) // or use a specific height
        
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
                }
                
            }
            .background(UIViewControllerResolver()) // Add the UIViewController resolver here
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                interstitialAdManager.loadInterstitialAd() // Load the ad when view appears
            }

        
    }
}
struct ListViewI1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        List {
            ForEach(["Customizing Burp Suite with Extensions",
                     "Analyzing Application Responses",
                     "Using the Comparer Tool in Burp Suite",
                     "Setting Up and Using Burp Collaborator",
                
                  ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                    .onAppear {
                        showTabBar = false
                        showInterstitialAd()
                    }
                    .navigationBarTitleDisplayMode(.inline)

                    .navigationTitle(item)) {
                        
                        CardView(item: item)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
            }
        }
        .onAppear {
            showTabBar = true // Ensure tab bar is shown when view appears
        }
        .scrollDisabled(true)
    }
    
    // Show the interstitial ad
    private func showInterstitialAd() {
        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
            adManager.showInterstitial(from: rootVC)
        }
    }
    
    func destinationView(for item: String) -> some View {
        switch item {
        case "Customizing Burp Suite with Extensions":
            HapticFeedbackManager.shared.triggerHapticFeedback()

            return AnyView(I1().navigationTitle(item))
        case "Analyzing Application Responses":
            return AnyView(I2().navigationTitle(item))
        case "Using the Comparer Tool in Burp Suite":
            return AnyView(I3().navigationTitle(item))
        case "Setting Up and Using Burp Collaborator":
            return AnyView(I4().navigationTitle(item))
  
         default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewI2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        List {
            ForEach(["Understanding Burp Suite's Reporting Features",
                     "Using the SQL Injection Scanner in Burp Suite",
                     "Cross-Site Scripting (XSS) Testing in Burp Suite",
                     "File Upload Vulnerability Testing in Burp Suite",
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                    .onAppear {
                        showTabBar = false
                        showInterstitialAd()
                    }
                    .navigationBarTitleDisplayMode(.inline)

                    .navigationTitle(item)) {
                        
                        CardView(item: item)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
            }
        }
        .onAppear {
            showTabBar = true // Ensure tab bar is shown when view appears
        }
        .scrollDisabled(true)
    }
    
    // Show the interstitial ad
    private func showInterstitialAd() {
        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
            adManager.showInterstitial(from: rootVC)
        }
    }
    
    func destinationView(for item: String) -> some View {
        switch item {
        case "Understanding Burp Suite's Reporting Features":
            return AnyView(I5().navigationTitle(item))
        case "Using the SQL Injection Scanner in Burp Suite":
            return AnyView(I6().navigationTitle(item))
        case "Cross-Site Scripting (XSS) Testing in Burp Suite":
            return AnyView(I7().navigationTitle(item))
        case "File Upload Vulnerability Testing in Burp Suite":
            return AnyView(I8().navigationTitle(item))
        
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewI3: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        List {
            ForEach(["Cross-Site Request Forgery (CSRF) Testing in Burp Suite",
                     "Finding Vulnerabilities in Web Applications",
         
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                    .onAppear {
                        showTabBar = false
                        showInterstitialAd()
                    }
                    .navigationBarTitleDisplayMode(.inline)

                    .navigationTitle(item)) {
                        
                        CardView(item: item)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
            }
        }
        .onAppear {
            showTabBar = true // Ensure tab bar is shown when view appears
        }
        .scrollDisabled(true)
    }
    
    // Show the interstitial ad
    private func showInterstitialAd() {
        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
            adManager.showInterstitial(from: rootVC)
        }
    }
    
    func destinationView(for item: String) -> some View {
        switch item {
        case "Cross-Site Request Forgery (CSRF) Testing in Burp Suite":
            return AnyView(I9().navigationTitle(item))
        case "Finding Vulnerabilities in Web Applications":
            return AnyView(I10().navigationTitle(item))
    
        
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}






struct MainIntermediate_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar
    
    static var previews: some View {
        MainIntermediate(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}






