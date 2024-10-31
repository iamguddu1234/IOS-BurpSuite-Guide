import GoogleMobileAds
import Combine

class InterstitialAdManager: NSObject, ObservableObject, GADFullScreenContentDelegate {
    @Published var interstitial: GADInterstitialAd?
    @Published var isAdReady: Bool = false // To track if the ad is ready

    override init() {
        super.init()
        loadInterstitialAd()
    }

    func loadInterstitialAd() {
        let request = GADRequest()

        GADInterstitialAd.load(withAdUnitID: "ca-app-pub-3940256099942544/4411468910", // Test ad unit ID
                               request: request) { [weak self] ad, error in
            if let error = error {
                print("Failed to load interstitial ad: \(error.localizedDescription)")
                self?.isAdReady = false
                return
            }
            self?.interstitial = ad
            self?.interstitial?.fullScreenContentDelegate = self // Set the delegate
            self?.isAdReady = true // Mark the ad as ready
        }
    }

    func showInterstitial(from viewController: UIViewController) {
        if let interstitial = interstitial {
            interstitial.present(fromRootViewController: viewController)
            isAdReady = false // Resetting to prevent showing again until loaded again
        } else {
            print("Ad wasn't ready")
        }
    }

//    // MARK: - GADFullScreenContentDelegate Methods
//
//    func adDidDismissFullScreenContent(_ ad: GADFullScreenContent) {
//        print("Ad was dismissed")
//        // Load a new ad after the current one is dismissed
//        loadInterstitialAd()
//    }
//
//    func adDidRecordImpression(_ ad: GADFullScreenContent) {
//        print("Ad recorded an impression")
//    }
//
//    func adDidFailToPresentFullScreenContent(_ ad: GADFullScreenContent, withError error: Error) {
//        print("Ad failed to present full screen content: \(error.localizedDescription)")
//        // Optionally, load a new ad in case of failure
//        loadInterstitialAd()
//    }
}
