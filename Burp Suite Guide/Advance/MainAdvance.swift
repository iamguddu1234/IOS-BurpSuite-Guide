//
//  MainAdvance.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie
import GoogleMobileAds



struct MainAdvance: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
//    @StateObject private var interstitialAdManager = InterstitialAdManager()
//    @StateObject private var adManager = InterstitialAdManager()




    var body: some View {
        

 
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                   
                    LottieView(animationName: "b", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewA1(showTabBar: $showTabBar/*,interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                        .frame(height: 220) // or use a specific height

                    ListViewA2(showTabBar: $showTabBar/*,interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                        .frame(height: 220) // or use a specific height

                    
                    ListViewA3(showTabBar: $showTabBar/*,interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                        .padding(.vertical, 0)
                        .frame(height: 260) // or use a specific height
             

               

                    

                    
                    Spacer()
                    
                }
                
            }
            .background(UIViewControllerResolver()) // Add the UIViewController resolver here
            .navigationBarTitleDisplayMode(.inline)
//            .onAppear {
//                interstitialAdManager.loadInterstitialAd() // Load the ad when view appears
//            }
     
                
            
        

    }
}
struct ListViewA1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
//    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        List {
            ForEach(["Mobile Application Testing",
                     "Advanced Scanning Techniques",
                     "Command-Line Interface",
                     "Best Practices for Penetration Testing",
                 ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear {
                                    showTabBar = false
//                                    showInterstitialAd()
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
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }
    

    func destinationView(for item: String) -> some View {
        switch item {
        case "Mobile Application Testing":
            HapticFeedbackManager.shared.triggerHapticFeedback()
            return AnyView(A1().navigationTitle(item))
        case "Advanced Scanning Techniques":
            return AnyView(A2().navigationTitle(item))
        case "Command-Line Interface":
            return AnyView(A3().navigationTitle(item))
        case "Best Practices for Penetration Testing":
            return AnyView(A4().navigationTitle(item))
     
       
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewA2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
//    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager

    var body: some View {
        List {
            ForEach(["Exporting and Analyzing Logs",
                     "Using with OWASP ZAP",
                     "Community vs. Professional Edition",
                     "Common Vulnerability Types",
                    
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                    .onAppear {
                        showTabBar = false
//                        showInterstitialAd()
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
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }

    func destinationView(for item: String) -> some View {
        switch item {
        case "Exporting and Analyzing Logs":
            return AnyView(A5().navigationTitle(item))
        case "Using with OWASP ZAP":
            return AnyView(A6().navigationTitle(item))
        case "Community vs. Professional Edition":
            return AnyView(A7().navigationTitle(item))
        case "Common Vulnerability Types":
            return AnyView(A8().navigationTitle(item))

       
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewA3: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
//    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager

    var body: some View {
        List {
            ForEach(["Session Management Testing",
                     "Testing for Security Misconfigurations",
                     "Using with Docker",
                     "Integrating CI/CD",
                           
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear {
                                    showTabBar = false
//                                    showInterstitialAd()
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
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }
    
    func destinationView(for item: String) -> some View {
        switch item {
        case "Session Management Testing":
            return AnyView(A6().navigationTitle(item))
        case "Testing for Security Misconfigurations":
            return AnyView(A7().navigationTitle(item))
        case "Using with Docker":
            return AnyView(A8().navigationTitle(item))
        case "Integrating CI/CD":
            return AnyView(A9().navigationTitle(item))
  
       
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}









struct MainAdvance_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar

    static var previews: some View {
        MainAdvance(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}







