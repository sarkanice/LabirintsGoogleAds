import Foundation
import GoogleMobileAds
import UserMessagingPlatform

public enum LabirintsGoogleAds {
    public static let packageLoaded = true

    public static func start() {
        MobileAds.shared.start()
    }
}