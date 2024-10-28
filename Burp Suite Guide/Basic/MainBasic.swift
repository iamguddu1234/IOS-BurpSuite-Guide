//
//  MainBasic.swift
//  LearnLinux
//
//  Created by Akshay Bhasme on 01/06/24.
//



import SwiftUI
import Lottie



struct MainBasic: View {
    
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar





    var body: some View {
        

            
     
            ScrollView{
                
                
                VStack(spacing: 0) {
                    
                   
                    LottieView(animationName: "anii", loopMode: .loop)
                        .frame(width: .infinity, height: 200)
                    
                    ListViewB1(showTabBar: $showTabBar)
                        .frame(height: 260) // or use a specific height

                    ListViewB2(showTabBar: $showTabBar)
                        .padding(.vertical, 0)
                        .frame(height: 260) // or use a specific height
                    ListViewB3(showTabBar: $showTabBar)
                        .padding(.vertical, 0)
                        .frame(height: 260) // or use a specific height

               

                    

                    
                    Spacer()
                    
                }

                
            }
            .navigationBarTitleDisplayMode(.inline)


    }
}
struct ListViewB1: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Introduction to Burp Suite",
                     "Installation and Setup of Burp Suite",
                     "Understanding Burp Suite Interface",
                     "Working with Proxy Settings",
                    "Capturing HTTP/S Traffic"], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear { showTabBar = false }
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

    func destinationView(for item: String) -> some View {
        switch item {
        case "Introduction to Burp Suite":
            HapticFeedbackManager.shared.triggerHapticFeedback()

            return AnyView(B1().navigationTitle(item))
        case "Installation and Setup of Burp Suite":
            return AnyView(B2().navigationTitle(item))
        case "Understanding Burp Suite Interface":
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

struct ListViewB2: View {
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Interception and Modifying Requests",
                     "Using the Target Tab",
                     "Spidering Web Applications with Burp Suite",
                     "Performing Active Scanning",
                     "Intruder for Automated Attacks",
                 
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear { showTabBar = false }
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

    func destinationView(for item: String) -> some View {
        switch item {
        case "Interception and Modifying Requests":
            return AnyView(B6().navigationTitle(item))
        case "Using the Target Tab":
            return AnyView(B7().navigationTitle(item))
        case "Spidering Web Applications with Burp Suite":
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
    @Binding var showTabBar: Bool // Add a binding for controlling the visibility of the tab bar

    var body: some View {
        List {
            ForEach(["Using Burp Suite's Repeater for Testing",
                     "Utilizing Decoder for Encoding/Decoding",
                     "Engagement Tools in Burp Suite",
                     "Using the Extender for Plugins in Burp Suite",
             
                    ], id: \.self) { item in
                NavigationLink(destination: destinationView(for: item)
                                .onAppear { showTabBar = false }
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

    func destinationView(for item: String) -> some View {
        switch item {
        case "Using Burp Suite's Repeater for Testing":
            return AnyView(B11().navigationTitle(item))
        case "Utilizing Decoder for Encoding/Decoding":
            return AnyView(B12().navigationTitle(item))
        case "Engagement Tools in Burp Suite":
            return AnyView(B13().navigationTitle(item))
        case "Using the Extender for Plugins in Burp Suite":
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






