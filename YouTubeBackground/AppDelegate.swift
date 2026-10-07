import UIKit
import AVFoundation

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        configureAudioSession()
        return true
    }

    private func configureAudioSession() {
        let session = AVAudioSession.sharedInstance()
        do {
            try session.setCategory(.playback, mode: .moviePlayback, options: [.allowAirPlay, .allowBluetoothA2DP])
            try session.setActive(true)
        } catch {
            print("Audio session error: \(error)")
        }
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Audio reactivation error: \(error)")
        }
    }
}
