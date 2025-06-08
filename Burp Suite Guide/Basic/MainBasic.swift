import SwiftUI
import GoogleMobileAds

struct MainBasic: View {
    
    @Binding var showTabBar: Bool
//    @StateObject private var interstitialAdManager = InterstitialAdManager()
//    @StateObject private var adManager = InterstitialAdManager()
//
//    @State private var adShownOnce = false

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                
                LottieView(animationName: "anii", loopMode: .loop)
                    .frame(width: .infinity, height: 200)
                
                ListViewB1(showTabBar: $showTabBar/*, interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                    .frame(height: 260)
                
                ListViewB2(showTabBar: $showTabBar/*, interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                    .padding(.vertical, 0)
                    .frame(height: 260)
                
                ListViewB3(showTabBar: $showTabBar/*, interstitialAdManager: interstitialAdManager, adManager: adManager*/)
                    .padding(.vertical, 0)
                    .frame(height: 260)
                
                Spacer()
            }
        }
        .background(UIViewControllerResolver()) // Add the UIViewController resolver here
        .navigationBarTitleDisplayMode(.inline)
//        .onAppear {
//                   // Show the ad whenever the view appears, even when switching tabs
//                   resetAdStateAndShowAd()
//               }
           }

//           private func resetAdStateAndShowAd() {
//               // Reset the adShownOnce flag and reload the interstitial ad
//               adShownOnce = false // Reset the flag to false when the view reappears
//               interstitialAdManager.loadInterstitialAd()
//
//               // Show the ad
//               showInterstitialAd()
//           }

//           private func showInterstitialAd() {
//               if !adShownOnce && interstitialAdManager.isAdReady {
//                   if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//                       interstitialAdManager.showInterstitial(from: rootVC)
//                       adShownOnce = true // Set the flag to true after showing the ad
//                   }
//               }
//           }
       }

// ListViewB1
struct ListViewB1: View {
    @Binding var showTabBar: Bool
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager

    var body: some View {
        List {
            ForEach(["Introduction",
                     "Installation and Setup",
                     "Understanding Interface",
                     "Working with Proxy Settings",
                     "Capturing HTTP/S Traffic"], id: \.self) { item in
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
        // Allow scrolling for the list
    }

    // Show the interstitial ad
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }



    func destinationView(for item: String) -> some View {
        switch item {
        case "Introduction":
            HapticFeedbackManager.shared.triggerHapticFeedback()
            return AnyView(B1().navigationTitle(item))
        case "Installation and Setup":
            return AnyView(B2().navigationTitle(item))
        case "Understanding Interface":
            return AnyView(B3().navigationTitle(item))
        case "Working with Proxy Settings":
            return AnyView(B4().navigationTitle(item))
        case "Capturing HTTP/S Traffic":
            return AnyView(B5().navigationTitle(item))
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}


// Repeat the same for ListViewB2 and ListViewB3 by using showAdOnce() and uiViewController as in ListViewB1.


struct ListViewB2: View {
    @Binding var showTabBar: Bool
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager


    var body: some View {
        List {
            ForEach(["Interception and Modifying Requests",
                     "Using the Target Tab",
                     "Spidering Web Applications",
                     "Performing Active Scanning",
                     "Intruder for Automated Attacks"], id: \.self) { item in
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
        case "Interception and Modifying Requests":
            return AnyView(B6().navigationTitle(item))
        case "Using the Target Tab":
            return AnyView(B7().navigationTitle(item))
        case "Spidering Web Applications":
            return AnyView(B8().navigationTitle(item))
        case "Performing Active Scanning":
            return AnyView(B9().navigationTitle(item))
        case "Intruder for Automated Attacks":
            return AnyView(B10().navigationTitle(item))
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct ListViewB3: View {
    @Binding var showTabBar: Bool
//    @ObservedObject var interstitialAdManager: InterstitialAdManager
    @Environment(\.uiViewController) private var uiViewController // Get the UI view controller from the environment
//    @ObservedObject var adManager: InterstitialAdManager


    var body: some View {
        List {
            ForEach(["Using Repeater for Testing",
                     "Utilizing Decoder for Encoding/Decoding",
                     "Engagement Tools",
                     "Using the Extender for Plugins"], id: \.self) { item in
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
    
 
//    // Show the interstitial ad
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }


    func destinationView(for item: String) -> some View {
        switch item {
        case "Using Repeater for Testing":
            return AnyView(B11().navigationTitle(item))
        case "Utilizing Decoder for Encoding/Decoding":
            return AnyView(B12().navigationTitle(item))
        case "Engagement Tools":
            return AnyView(B13().navigationTitle(item))
        case "Using the Extender for Plugins":
            return AnyView(B14().navigationTitle(item))
        default:
            return AnyView(EmptyView().navigationTitle("Unknown"))
        }
    }
}

struct CardView: View {
    let item: String

    var body: some View {
        VStack(spacing: 10) { // Aligning content to the start
            Text(item)
                .font(.headline)
                .foregroundColor(.black.opacity(0.8))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(1)
                .truncationMode(.tail)
        }
        .frame(maxHeight: 40)
        .cornerRadius(10)
        .padding(0)
    }
}




struct MainBasic_Previews: PreviewProvider {
    @State static var showTabBar = true // Create a State variable for showTabBar

    static var previews: some View {
        MainBasic(showTabBar: $showTabBar) // Pass the binding to BasicHomeView
    }
}


