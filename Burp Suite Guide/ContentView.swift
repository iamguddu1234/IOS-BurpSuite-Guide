import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    // Interstitial Ad Manager instance
//    @StateObject private var adManager = InterstitialAdManager()
    
    @State private var showTabBar = true
    @State private var selectedTabIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
                if showTabBar {
                    CustomTabView(selectedIndex: $selectedTabIndex/* adManager: adManager*/)
                        .padding(.top, 10)
                }
                
                Group {
                    switch selectedTabIndex {
                    case 0:
                        MainBasic(showTabBar: $showTabBar)
                    case 1:
                        MainIntermediate(showTabBar: $showTabBar)
                    case 2:
                        MainAdvance(showTabBar: $showTabBar)
                    default:
                        EmptyView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Spacer()
            }
            .background(Color.gray.opacity(0.1))
            .edgesIgnoringSafeArea(.bottom)
        }
        .preferredColorScheme(.light)
    }
}

// Tab View with Ad Manager injected
struct CustomTabView: View {
    @Binding var selectedIndex: Int
//    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        HStack (spacing: 0) {
            TabButton(title: "Basic", index: 0, selectedIndex: $selectedIndex/* adManager: adManager)*/)
                .frame(maxWidth: .infinity)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 1, height: 40)
            
            TabButton(title: "Intermediate", index: 1, selectedIndex: $selectedIndex /*adManager: adManager*/)
                .frame(maxWidth: .infinity)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 1, height: 40)
            
            TabButton(title: "Advanced", index: 2, selectedIndex: $selectedIndex /*adManager: adManager*/)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 40)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
        .padding(.horizontal)
        .padding(.vertical, 0)
    }
}

// Tab button that shows the ad when clicked
struct TabButton: View {
    let title: String
    let index: Int
    @Binding var selectedIndex: Int
//    @ObservedObject var adManager: InterstitialAdManager
    
    var body: some View {
        Button(action: {
            self.selectedIndex = self.index
            HapticFeedbackManager.shared.triggerHapticFeedback()
//            showInterstitialAd()
        }) {
            Text(title)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(selectedIndex == index ? .white : .black)
                .padding(.vertical, 10)
                .background(selectedIndex == index ? Color.blue : Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 1))
        }
        .buttonStyle(PlainButtonStyle())
    }
    
//    // Show the interstitial ad
//    private func showInterstitialAd() {
//        if let rootVC = UIApplication.shared.windows.first?.rootViewController {
//            adManager.showInterstitial(from: rootVC)
//        }
//    }
}

