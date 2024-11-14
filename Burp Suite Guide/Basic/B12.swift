//
//  B12.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 28/10/24.
//

import SwiftUI

struct B12: View {
    
    let l1 = "12.Utilizing Decoder for Encoding/Decoding"
    
    let l2 = "Utilizing Burp Suite\'s Decoder for Encoding/Decoding"
    let l3 = "Burp Suite\'sDecoder tool is designed to help you easily encode and decode data in various formats. This tool is essential when dealing with obfuscated or encoded data that might be encountered during security assessments, such as Base64, URL encoding, HTML entities, or other encoding schemes. Decoder allows you to quickly convert data between different formats and understand how an application processes certain types of input."
    
    let l4 = "Here’s a detailed guide on how to use the Decoder tool in Burp Suite:"
    
    let l5 = "1. What is Burp Suite Decoder?"
    let l6 = "TheDecoder tool enables you to:"
    let l7 = "Decode: Convert encoded data (like Base64, URL encoding) into its original readable format."
    let l8 = "Encode: Convert readable data into encoded formats that might be required for testing purposes."
    let l9 = "Hash: Generate cryptographic hashes (e.g., MD5, SHA-256) for data, useful in testing or verifying data integrity."
    let l10 = "It supports multiple encoding and decoding schemes, including URL, Base64, HTML, hex, and more. You can even chain multiple encoding formats to convert complex data."
    
    let l11 = "2. Accessing the Decoder Tool"
    let l12 = "You can access Decoder by navigating to theDecoder tab in Burp Suite. The interface is straightforward and consists of two main panels:"
    let l13 = "Input: Where you paste the encoded or decoded data you want to process."
    let l14 = "Output: Where the decoded or encoded result will be displayed after performing the operation."
    
    let l15 = "3. Decoding Data"
    let l16 = "One of the most common uses of the Decoder tool is to decode data that has been obfuscated or encoded in various formats."
    let l17 = "Step-by-Step: Decoding Data in Decoder"
    let l18 = "1.Capture the Encoded Data: When testing a web application, you may encounter encoded strings in parameters, cookies, or request bodies (e.g., Base64, URL-encoded values)."
    let l19 = "2.Paste the Encoded Data: Go to theDecoder tab, and paste the encoded string into the input field."
    let l20 = "3.Select Decoding Format: From the action buttons, choose the appropriate decoding method, such asBase64 decode,URL decode, or Hex decode."
    let l21 = "4.View the Decoded Output: The decoded result will be displayed in theOutput pane, allowing you to analyze the original data."
    
    let l22 = "Common Decoding Formats:"
    let l23 = "Base64: Often used in web applications for encoding binary data or for transmitting data in JSON or cookies."
    let l24 = "URL encoding: Encodes characters in a URL using percent signs (e.g., `%20` for a space)."
    let l25 = "Hexadecimal: Encodes data as hexadecimal values, often used for binary data."
    let l26 = "HTML encoding: Converts HTML special characters into their entity format (e.g., `&amp;` for `&amp;`)."
    
    let l27 = "4. Encoding Data"
    let l28 = "In some cases, you’ll need to encode your own data to test how a web application responds to specific input types. For example, you might want to send Base64-encoded payloads in HTTP requests."
    let l29 = "Step-by-Step: Encoding Data in Decoder"
    let l30 = "1.Input Plain Data: In the Decoder tab, enter the data you want to encode in theInput section (e.g., `HelloWorld`)."
    let l31 = "2.Select Encoding Format: Choose the desired encoding format, such asBase64 encode,URL encode, orHTML encode, depending on your needs."
    let l32 = "3.View the Encoded Output: The encoded result will appear in theOutput pane, which can be used in your testing process."
    
    let l33 = "Common Encoding Scenarios:"
    let l34 = "URL Encoding: Used when embedding data into URLs where certain characters (e.g., `space`, `&amp;`) need to be encoded."
    let l35 = "Base64 Encoding: Used when sending binary or complex data in HTTP requests or when dealing with API payloads."
    let l36 = "HTML Encoding: Encodes special characters to prevent HTML injection attacks."
    
    let l37 = "5. Hashing Data"
    let l38 = "The Decoder tool also allows you to generate cryptographic hashes (like MD5, SHA-256) for any given input. Hashing is useful in checking file integrity, testing for weak password storage mechanisms, or verifying data signatures."
    let l39 = "Step-by-Step: Hashing Data in Decoder"
    let l40 = "1.Input the Data: Enter the string or data you want to hash."
    let l41 = "2.Select Hashing Method: Click on the desired hashing algorithm (MD5, SHA-1, SHA-256)."
    let l42 = "3.View the Hash: The resulting hash will appear in theOutput pane. This hash can be used for testing password vulnerabilities, integrity checks, etc."
    
    let l43 = "Common Hashing Algorithms:"
    let l44 = "MD5: A widely used but weak hash function that produces a 128-bit hash. It’s prone to collision attacks."
    let l45 = "SHA-1: A more secure hash function than MD5, but still considered insecure for cryptographic use."
    let l46 = "SHA-256: A strong hash function that produces a 256-bit hash, widely used in security protocols."
    
    let l47 = "6. Practical Use Cases for Decoder"
    
    let l48 = "6.1 Decoding Authentication Tokens"
    let l49 = "In some web applications,JWT (JSON Web Tokens) orBase64 encoded tokens are used for authentication. With Decoder, you can decode these tokens to inspect the claims and verify the token\'s structure."
    
    let l50 = "6.2 Manipulating URL-encoded Parameters"
    let l51 = "When testing for vulnerabilities such as parameter tampering or IDOR (Insecure Direct Object Reference), you might need to modify URL-encoded parameters. Decoder allows you to easily decode and encode these values."
    
    let l52 = "6.3 Inspecting Hexadecimal Data"
    let l53 = "Applications sometimes transmit binary data as hex-encoded strings. You can decode these values to see the actual binary content or encode data back to hex for testing buffer overflow or binary injection attacks."
    
    let l54 = "6.4 Testing HTML and Script Injection"
    let l55 = "When testing for cross-site scripting (XSS) vulnerabilities, you can use HTML encoding to inject special characters and scripts safely into an application. Decoder helps you craft payloads with the correct encoding format."
    
    let l56 = "6.5 Hashing for Password Testing"
    let l57 = "Many applications use weak hashing algorithms to store passwords. Decoder allows you to test different hash values or compare how the application handles password storage."
    
    let l58 = "7. Chaining Multiple Encodings"
    let l59 = "A unique feature of Decoder is its ability to chain multiple encoding or decoding operations. For example, if you have data that is Base64 encoded, then URL encoded, you can decode it in stages. This is useful when dealing with multiple layers of obfuscation."
    let l60 = "Step-by-Step: Chaining Encodings"
    let l61 = "1.Input the Data: Paste the encoded data that needs to go through multiple decoding steps."
    let l62 = "2.Decode in Stages: Choose the first decoding format (e.g., URL decode), then clickDecode."
    let l63 = "3.Apply Another Decoding: Now choose another decoding format (e.g., Base64 decode), and clickDecode again."
    let l64 = "4.View Final Output: After all decoding steps are complete, the final result will be displayed in theOutput pane."
    
    let l65 = "8. Conclusion"
    let l66 = "Burp Suite’s Decoder is an invaluable tool when dealing with encoded, obfuscated, or hashed data during security testing. Whether you\'re decoding Base64 tokens, URL-encoded parameters, or generating hash values, Decoder simplifies the process and allows you to quickly analyze and test encoded data. It’s especially useful when working with complex data encoding schemes or testing web applications for encoding vulnerabilities."
    
    
    
    var body: some View {
        ZStack {
            // Background color or other background elements
            Color("bg").ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        
                        
                        
                        
                        Text2(title1: l2, title2: l3)
                        
                        Head(title: l4)
                        
                        
                        
                        Text6(title1: l5, title2: l6, title3: l7, title4: l8, title5: l9, title6: l10)
                        
                        
                        
                        Text4(title1: l11, title2: l12, title3: l13, title4: l14)
                        
                        
                        
                        Text7(title1: l15, title2: l16, title3: l17, title4: l18, title5: l19, title6: l20, title7: l21)
                        
                        
                        
                        
                        Text5(title1: l22, title2: l23, title3: l24, title4: l25, title5: l26)
                        
                        
                        
                        Text6(title1: l27, title2: l28, title3: l29, title4: l30, title5: l31, title6: l32)
                        
                        
                        
                        Text4(title1: l33, title2: l34, title3: l35, title4: l36)
                        
                        
                        
                        Text6(title1: l37, title2: l38, title3: l39, title4: l40, title5: l41, title6: l42)
                        
                        
                        
                        Text4(title1: l43, title2: l44, title3: l45, title4: l46)
                        
                        Head(title: l47)
                        
                        
                        
                        Text2(title1: l48, title2: l49)
                        
                        
                        
                        Text2(title1: l50, title2: l51)
                        
                        
                        
                        Text2(title1: l52, title2: l53)
                        
                        
                        
                        Text2(title1: l54, title2: l55)
                        
                        
                        
                        Text2(title1: l56, title2: l57)
                        
                        
                        
                        Text7(title1: l58, title2: l59, title3: l60, title4: l61, title5: l62, title6: l63, title7: l64)
                        
                        
                        Text2(title1: l65, title2: l66)
                        
                        
                        
                        
            
                        
                        
                        
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
    B12()
}
