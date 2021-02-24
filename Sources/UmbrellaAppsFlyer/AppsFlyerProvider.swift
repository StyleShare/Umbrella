import Foundation

#if !COCOAPODS
import Umbrella
#endif

open class AppsFlyerProvider: RuntimeProviderType {
  public let className: String = "AppsFlyerLib"
  public let instanceSelectorName: String? = "shared"
  public let selectorName: String = "logEventWithEventName:eventValues:completionHandler:"

  public init() {
  }
}
