import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "background-color" asset catalog color resource.
    static let background = DeveloperToolsSupport.ColorResource(name: "background-color", bundle: resourceBundle)

    /// The "blackColor" asset catalog color resource.
    static let black = DeveloperToolsSupport.ColorResource(name: "blackColor", bundle: resourceBundle)

    /// The "blueEF" asset catalog color resource.
    static let blueEF = DeveloperToolsSupport.ColorResource(name: "blueEF", bundle: resourceBundle)

    /// The "brandFail" asset catalog color resource.
    static let brandFail = DeveloperToolsSupport.ColorResource(name: "brandFail", bundle: resourceBundle)

    /// The "color7C" asset catalog color resource.
    static let color7C = DeveloperToolsSupport.ColorResource(name: "color7C", bundle: resourceBundle)

    /// The "colorEE" asset catalog color resource.
    static let colorEE = DeveloperToolsSupport.ColorResource(name: "colorEE", bundle: resourceBundle)

    /// The "colorF4" asset catalog color resource.
    static let colorF4 = DeveloperToolsSupport.ColorResource(name: "colorF4", bundle: resourceBundle)

    /// The "colorF5" asset catalog color resource.
    static let colorF5 = DeveloperToolsSupport.ColorResource(name: "colorF5", bundle: resourceBundle)

    /// The "colorF9" asset catalog color resource.
    static let colorF9 = DeveloperToolsSupport.ColorResource(name: "colorF9", bundle: resourceBundle)

    /// The "hash" asset catalog color resource.
    static let hash = DeveloperToolsSupport.ColorResource(name: "hash", bundle: resourceBundle)

    /// The "hint" asset catalog color resource.
    static let hint = DeveloperToolsSupport.ColorResource(name: "hint", bundle: resourceBundle)

    /// The "kprimary" asset catalog color resource.
    static let kprimary = DeveloperToolsSupport.ColorResource(name: "kprimary", bundle: resourceBundle)

    /// The "lightBg" asset catalog color resource.
    static let lightBg = DeveloperToolsSupport.ColorResource(name: "lightBg", bundle: resourceBundle)

    /// The "orange00" asset catalog color resource.
    static let orange00 = DeveloperToolsSupport.ColorResource(name: "orange00", bundle: resourceBundle)

    /// The "orangeE6" asset catalog color resource.
    static let orangeE6 = DeveloperToolsSupport.ColorResource(name: "orangeE6", bundle: resourceBundle)

    /// The "orangeHue" asset catalog color resource.
    static let orangeHue = DeveloperToolsSupport.ColorResource(name: "orangeHue", bundle: resourceBundle)

    /// The "subBg" asset catalog color resource.
    static let subBg = DeveloperToolsSupport.ColorResource(name: "subBg", bundle: resourceBundle)

    /// The "textBody" asset catalog color resource.
    static let textBody = DeveloperToolsSupport.ColorResource(name: "textBody", bundle: resourceBundle)

    /// The "textFieldColor" asset catalog color resource.
    static let textField = DeveloperToolsSupport.ColorResource(name: "textFieldColor", bundle: resourceBundle)

    /// The "textH" asset catalog color resource.
    static let textH = DeveloperToolsSupport.ColorResource(name: "textH", bundle: resourceBundle)

    /// The "textHairline" asset catalog color resource.
    static let textHairline = DeveloperToolsSupport.ColorResource(name: "textHairline", bundle: resourceBundle)

    /// The "textSub" asset catalog color resource.
    static let textSub = DeveloperToolsSupport.ColorResource(name: "textSub", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "adult_products_image" asset catalog image resource.
    static let adultProducts = DeveloperToolsSupport.ImageResource(name: "adult_products_image", bundle: resourceBundle)

    /// The "apple" asset catalog image resource.
    static let apple = DeveloperToolsSupport.ImageResource(name: "apple", bundle: resourceBundle)

    /// The "arrow_send" asset catalog image resource.
    static let arrowSend = DeveloperToolsSupport.ImageResource(name: "arrow_send", bundle: resourceBundle)

    /// The "back" asset catalog image resource.
    static let back = DeveloperToolsSupport.ImageResource(name: "back", bundle: resourceBundle)

    /// The "bags_image" asset catalog image resource.
    static let bags = DeveloperToolsSupport.ImageResource(name: "bags_image", bundle: resourceBundle)

    /// The "camera_plus" asset catalog image resource.
    static let cameraPlus = DeveloperToolsSupport.ImageResource(name: "camera_plus", bundle: resourceBundle)

    /// The "cardWhite" asset catalog image resource.
    static let cardWhite = DeveloperToolsSupport.ImageResource(name: "cardWhite", bundle: resourceBundle)

    /// The "cart_icon" asset catalog image resource.
    static let cartIcon = DeveloperToolsSupport.ImageResource(name: "cart_icon", bundle: resourceBundle)

    /// The "cart_plus" asset catalog image resource.
    static let cartPlus = DeveloperToolsSupport.ImageResource(name: "cart_plus", bundle: resourceBundle)

    /// The "category" asset catalog image resource.
    static let category = DeveloperToolsSupport.ImageResource(name: "category", bundle: resourceBundle)

    /// The "chain" asset catalog image resource.
    static let chain = DeveloperToolsSupport.ImageResource(name: "chain", bundle: resourceBundle)

    /// The "clothing_image" asset catalog image resource.
    static let clothing = DeveloperToolsSupport.ImageResource(name: "clothing_image", bundle: resourceBundle)

    /// The "computer_image" asset catalog image resource.
    static let computer = DeveloperToolsSupport.ImageResource(name: "computer_image", bundle: resourceBundle)

    /// The "coupon" asset catalog image resource.
    static let coupon = DeveloperToolsSupport.ImageResource(name: "coupon", bundle: resourceBundle)

    /// The "diamond" asset catalog image resource.
    static let diamond = DeveloperToolsSupport.ImageResource(name: "diamond", bundle: resourceBundle)

    /// The "edit_pencil" asset catalog image resource.
    static let editPencil = DeveloperToolsSupport.ImageResource(name: "edit_pencil", bundle: resourceBundle)

    /// The "electronics_image" asset catalog image resource.
    static let electronics = DeveloperToolsSupport.ImageResource(name: "electronics_image", bundle: resourceBundle)

    /// The "exit" asset catalog image resource.
    static let exit = DeveloperToolsSupport.ImageResource(name: "exit", bundle: resourceBundle)

    /// The "explore_round" asset catalog image resource.
    static let exploreRound = DeveloperToolsSupport.ImageResource(name: "explore_round", bundle: resourceBundle)

    /// The "facebook" asset catalog image resource.
    static let facebook = DeveloperToolsSupport.ImageResource(name: "facebook", bundle: resourceBundle)

    /// The "favourite" asset catalog image resource.
    static let favourite = DeveloperToolsSupport.ImageResource(name: "favourite", bundle: resourceBundle)

    /// The "furniture_image" asset catalog image resource.
    static let furniture = DeveloperToolsSupport.ImageResource(name: "furniture_image", bundle: resourceBundle)

    /// The "google" asset catalog image resource.
    static let google = DeveloperToolsSupport.ImageResource(name: "google", bundle: resourceBundle)

    /// The "grocery_image" asset catalog image resource.
    static let grocery = DeveloperToolsSupport.ImageResource(name: "grocery_image", bundle: resourceBundle)

    /// The "hair_wigs_image" asset catalog image resource.
    static let hairWigs = DeveloperToolsSupport.ImageResource(name: "hair_wigs_image", bundle: resourceBundle)

    /// The "health_image" asset catalog image resource.
    static let health = DeveloperToolsSupport.ImageResource(name: "health_image", bundle: resourceBundle)

    /// The "heart" asset catalog image resource.
    static let heart = DeveloperToolsSupport.ImageResource(name: "heart", bundle: resourceBundle)

    /// The "home" asset catalog image resource.
    static let home = DeveloperToolsSupport.ImageResource(name: "home", bundle: resourceBundle)

    /// The "home2" asset catalog image resource.
    static let home2 = DeveloperToolsSupport.ImageResource(name: "home2", bundle: resourceBundle)

    /// The "home_icon" asset catalog image resource.
    static let homeIcon = DeveloperToolsSupport.ImageResource(name: "home_icon", bundle: resourceBundle)

    /// The "kiddies_image" asset catalog image resource.
    static let kiddies = DeveloperToolsSupport.ImageResource(name: "kiddies_image", bundle: resourceBundle)

    /// The "kitchen_image" asset catalog image resource.
    static let kitchen = DeveloperToolsSupport.ImageResource(name: "kitchen_image", bundle: resourceBundle)

    /// The "laptop" asset catalog image resource.
    static let laptop = DeveloperToolsSupport.ImageResource(name: "laptop", bundle: resourceBundle)

    /// The "location" asset catalog image resource.
    static let location = DeveloperToolsSupport.ImageResource(name: "location", bundle: resourceBundle)

    /// The "lock" asset catalog image resource.
    static let lock = DeveloperToolsSupport.ImageResource(name: "lock", bundle: resourceBundle)

    /// The "login" asset catalog image resource.
    static let login = DeveloperToolsSupport.ImageResource(name: "login", bundle: resourceBundle)

    /// The "love" asset catalog image resource.
    static let love = DeveloperToolsSupport.ImageResource(name: "love", bundle: resourceBundle)

    /// The "mail" asset catalog image resource.
    static let mail = DeveloperToolsSupport.ImageResource(name: "mail", bundle: resourceBundle)

    /// The "ok" asset catalog image resource.
    static let ok = DeveloperToolsSupport.ImageResource(name: "ok", bundle: resourceBundle)

    /// The "pAddress" asset catalog image resource.
    static let pAddress = DeveloperToolsSupport.ImageResource(name: "pAddress", bundle: resourceBundle)

    /// The "pCard" asset catalog image resource.
    static let pCard = DeveloperToolsSupport.ImageResource(name: "pCard", bundle: resourceBundle)

    /// The "pLike" asset catalog image resource.
    static let pLike = DeveloperToolsSupport.ImageResource(name: "pLike", bundle: resourceBundle)

    /// The "pOrders" asset catalog image resource.
    static let pOrders = DeveloperToolsSupport.ImageResource(name: "pOrders", bundle: resourceBundle)

    /// The "pProfile" asset catalog image resource.
    static let pProfile = DeveloperToolsSupport.ImageResource(name: "pProfile", bundle: resourceBundle)

    /// The "pRefer" asset catalog image resource.
    static let pRefer = DeveloperToolsSupport.ImageResource(name: "pRefer", bundle: resourceBundle)

    /// The "page" asset catalog image resource.
    static let page = DeveloperToolsSupport.ImageResource(name: "page", bundle: resourceBundle)

    /// The "passkey" asset catalog image resource.
    static let passkey = DeveloperToolsSupport.ImageResource(name: "passkey", bundle: resourceBundle)

    /// The "phone" asset catalog image resource.
    static let phone = DeveloperToolsSupport.ImageResource(name: "phone", bundle: resourceBundle)

    /// The "phones_image" asset catalog image resource.
    static let phones = DeveloperToolsSupport.ImageResource(name: "phones_image", bundle: resourceBundle)

    /// The "profile_icon" asset catalog image resource.
    static let profileIcon = DeveloperToolsSupport.ImageResource(name: "profile_icon", bundle: resourceBundle)

    /// The "sad" asset catalog image resource.
    static let sad = DeveloperToolsSupport.ImageResource(name: "sad", bundle: resourceBundle)

    /// The "sam" asset catalog image resource.
    static let sam = DeveloperToolsSupport.ImageResource(name: "sam", bundle: resourceBundle)

    /// The "save_white" asset catalog image resource.
    static let saveWhite = DeveloperToolsSupport.ImageResource(name: "save_white", bundle: resourceBundle)

    /// The "search_icon" asset catalog image resource.
    static let searchIcon = DeveloperToolsSupport.ImageResource(name: "search_icon", bundle: resourceBundle)

    /// The "sell_icon" asset catalog image resource.
    static let sellIcon = DeveloperToolsSupport.ImageResource(name: "sell_icon", bundle: resourceBundle)

    /// The "sell_white" asset catalog image resource.
    static let sellWhite = DeveloperToolsSupport.ImageResource(name: "sell_white", bundle: resourceBundle)

    /// The "send_small" asset catalog image resource.
    static let sendSmall = DeveloperToolsSupport.ImageResource(name: "send_small", bundle: resourceBundle)

    /// The "setup_round" asset catalog image resource.
    static let setupRound = DeveloperToolsSupport.ImageResource(name: "setup_round", bundle: resourceBundle)

    /// The "share" asset catalog image resource.
    static let share = DeveloperToolsSupport.ImageResource(name: "share", bundle: resourceBundle)

    /// The "share 1" asset catalog image resource.
    static let share1 = DeveloperToolsSupport.ImageResource(name: "share 1", bundle: resourceBundle)

    /// The "shoes_image" asset catalog image resource.
    static let shoes = DeveloperToolsSupport.ImageResource(name: "shoes_image", bundle: resourceBundle)

    /// The "slider1" asset catalog image resource.
    static let slider1 = DeveloperToolsSupport.ImageResource(name: "slider1", bundle: resourceBundle)

    /// The "slider2" asset catalog image resource.
    static let slider2 = DeveloperToolsSupport.ImageResource(name: "slider2", bundle: resourceBundle)

    /// The "splashIcon" asset catalog image resource.
    static let splashIcon = DeveloperToolsSupport.ImageResource(name: "splashIcon", bundle: resourceBundle)

    /// The "start_sell" asset catalog image resource.
    static let startSell = DeveloperToolsSupport.ImageResource(name: "start_sell", bundle: resourceBundle)

    /// The "success" asset catalog image resource.
    static let success = DeveloperToolsSupport.ImageResource(name: "success", bundle: resourceBundle)

    /// The "title" asset catalog image resource.
    static let title = DeveloperToolsSupport.ImageResource(name: "title", bundle: resourceBundle)

    /// The "type" asset catalog image resource.
    static let type = DeveloperToolsSupport.ImageResource(name: "type", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "background-color" asset catalog color.
    static var background: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .background)
#else
        .init()
#endif
    }

    #warning("The \"blackColor\" color asset name resolves to a conflicting NSColor symbol \"black\". Try renaming the asset.")

    /// The "blueEF" asset catalog color.
    static var blueEF: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .blueEF)
#else
        .init()
#endif
    }

    /// The "brandFail" asset catalog color.
    static var brandFail: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .brandFail)
#else
        .init()
#endif
    }

    /// The "color7C" asset catalog color.
    static var color7C: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .color7C)
#else
        .init()
#endif
    }

    /// The "colorEE" asset catalog color.
    static var colorEE: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .colorEE)
#else
        .init()
#endif
    }

    /// The "colorF4" asset catalog color.
    static var colorF4: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .colorF4)
#else
        .init()
#endif
    }

    /// The "colorF5" asset catalog color.
    static var colorF5: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .colorF5)
#else
        .init()
#endif
    }

    /// The "colorF9" asset catalog color.
    static var colorF9: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .colorF9)
#else
        .init()
#endif
    }

    /// The "hash" asset catalog color.
    static var hash: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hash)
#else
        .init()
#endif
    }

    /// The "hint" asset catalog color.
    static var hint: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hint)
#else
        .init()
#endif
    }

    /// The "kprimary" asset catalog color.
    static var kprimary: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .kprimary)
#else
        .init()
#endif
    }

    /// The "lightBg" asset catalog color.
    static var lightBg: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lightBg)
#else
        .init()
#endif
    }

    /// The "orange00" asset catalog color.
    static var orange00: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .orange00)
#else
        .init()
#endif
    }

    /// The "orangeE6" asset catalog color.
    static var orangeE6: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .orangeE6)
#else
        .init()
#endif
    }

    /// The "orangeHue" asset catalog color.
    static var orangeHue: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .orangeHue)
#else
        .init()
#endif
    }

    /// The "subBg" asset catalog color.
    static var subBg: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .subBg)
#else
        .init()
#endif
    }

    /// The "textBody" asset catalog color.
    static var textBody: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .textBody)
#else
        .init()
#endif
    }

    /// The "textFieldColor" asset catalog color.
    static var textField: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .textField)
#else
        .init()
#endif
    }

    /// The "textH" asset catalog color.
    static var textH: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .textH)
#else
        .init()
#endif
    }

    /// The "textHairline" asset catalog color.
    static var textHairline: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .textHairline)
#else
        .init()
#endif
    }

    /// The "textSub" asset catalog color.
    static var textSub: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .textSub)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "background-color" asset catalog color.
    static var background: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .background)
#else
        .init()
#endif
    }

    #warning("The \"blackColor\" color asset name resolves to a conflicting UIColor symbol \"black\". Try renaming the asset.")

    /// The "blueEF" asset catalog color.
    static var blueEF: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .blueEF)
#else
        .init()
#endif
    }

    /// The "brandFail" asset catalog color.
    static var brandFail: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .brandFail)
#else
        .init()
#endif
    }

    /// The "color7C" asset catalog color.
    static var color7C: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .color7C)
#else
        .init()
#endif
    }

    /// The "colorEE" asset catalog color.
    static var colorEE: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .colorEE)
#else
        .init()
#endif
    }

    /// The "colorF4" asset catalog color.
    static var colorF4: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .colorF4)
#else
        .init()
#endif
    }

    /// The "colorF5" asset catalog color.
    static var colorF5: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .colorF5)
#else
        .init()
#endif
    }

    /// The "colorF9" asset catalog color.
    static var colorF9: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .colorF9)
#else
        .init()
#endif
    }

    /// The "hash" asset catalog color.
    static var hash: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .hash)
#else
        .init()
#endif
    }

    /// The "hint" asset catalog color.
    static var hint: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .hint)
#else
        .init()
#endif
    }

    /// The "kprimary" asset catalog color.
    static var kprimary: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .kprimary)
#else
        .init()
#endif
    }

    /// The "lightBg" asset catalog color.
    static var lightBg: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .lightBg)
#else
        .init()
#endif
    }

    /// The "orange00" asset catalog color.
    static var orange00: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .orange00)
#else
        .init()
#endif
    }

    /// The "orangeE6" asset catalog color.
    static var orangeE6: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .orangeE6)
#else
        .init()
#endif
    }

    /// The "orangeHue" asset catalog color.
    static var orangeHue: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .orangeHue)
#else
        .init()
#endif
    }

    /// The "subBg" asset catalog color.
    static var subBg: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .subBg)
#else
        .init()
#endif
    }

    /// The "textBody" asset catalog color.
    static var textBody: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .textBody)
#else
        .init()
#endif
    }

    /// The "textFieldColor" asset catalog color.
    static var textField: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .textField)
#else
        .init()
#endif
    }

    /// The "textH" asset catalog color.
    static var textH: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .textH)
#else
        .init()
#endif
    }

    /// The "textHairline" asset catalog color.
    static var textHairline: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .textHairline)
#else
        .init()
#endif
    }

    /// The "textSub" asset catalog color.
    static var textSub: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .textSub)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "background-color" asset catalog color.
    static var background: SwiftUI.Color { .init(.background) }

    #warning("The \"blackColor\" color asset name resolves to a conflicting Color symbol \"black\". Try renaming the asset.")

    /// The "blueEF" asset catalog color.
    static var blueEF: SwiftUI.Color { .init(.blueEF) }

    /// The "brandFail" asset catalog color.
    static var brandFail: SwiftUI.Color { .init(.brandFail) }

    /// The "color7C" asset catalog color.
    static var color7C: SwiftUI.Color { .init(.color7C) }

    /// The "colorEE" asset catalog color.
    static var colorEE: SwiftUI.Color { .init(.colorEE) }

    /// The "colorF4" asset catalog color.
    static var colorF4: SwiftUI.Color { .init(.colorF4) }

    /// The "colorF5" asset catalog color.
    static var colorF5: SwiftUI.Color { .init(.colorF5) }

    /// The "colorF9" asset catalog color.
    static var colorF9: SwiftUI.Color { .init(.colorF9) }

    /// The "hash" asset catalog color.
    static var hash: SwiftUI.Color { .init(.hash) }

    /// The "hint" asset catalog color.
    static var hint: SwiftUI.Color { .init(.hint) }

    /// The "kprimary" asset catalog color.
    static var kprimary: SwiftUI.Color { .init(.kprimary) }

    /// The "lightBg" asset catalog color.
    static var lightBg: SwiftUI.Color { .init(.lightBg) }

    /// The "orange00" asset catalog color.
    static var orange00: SwiftUI.Color { .init(.orange00) }

    /// The "orangeE6" asset catalog color.
    static var orangeE6: SwiftUI.Color { .init(.orangeE6) }

    /// The "orangeHue" asset catalog color.
    static var orangeHue: SwiftUI.Color { .init(.orangeHue) }

    /// The "subBg" asset catalog color.
    static var subBg: SwiftUI.Color { .init(.subBg) }

    /// The "textBody" asset catalog color.
    static var textBody: SwiftUI.Color { .init(.textBody) }

    /// The "textFieldColor" asset catalog color.
    static var textField: SwiftUI.Color { .init(.textField) }

    /// The "textH" asset catalog color.
    static var textH: SwiftUI.Color { .init(.textH) }

    /// The "textHairline" asset catalog color.
    static var textHairline: SwiftUI.Color { .init(.textHairline) }

    /// The "textSub" asset catalog color.
    static var textSub: SwiftUI.Color { .init(.textSub) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "background-color" asset catalog color.
    static var background: SwiftUI.Color { .init(.background) }

    /// The "blueEF" asset catalog color.
    static var blueEF: SwiftUI.Color { .init(.blueEF) }

    /// The "brandFail" asset catalog color.
    static var brandFail: SwiftUI.Color { .init(.brandFail) }

    /// The "color7C" asset catalog color.
    static var color7C: SwiftUI.Color { .init(.color7C) }

    /// The "colorEE" asset catalog color.
    static var colorEE: SwiftUI.Color { .init(.colorEE) }

    /// The "colorF4" asset catalog color.
    static var colorF4: SwiftUI.Color { .init(.colorF4) }

    /// The "colorF5" asset catalog color.
    static var colorF5: SwiftUI.Color { .init(.colorF5) }

    /// The "colorF9" asset catalog color.
    static var colorF9: SwiftUI.Color { .init(.colorF9) }

    /// The "hash" asset catalog color.
    static var hash: SwiftUI.Color { .init(.hash) }

    /// The "hint" asset catalog color.
    static var hint: SwiftUI.Color { .init(.hint) }

    /// The "kprimary" asset catalog color.
    static var kprimary: SwiftUI.Color { .init(.kprimary) }

    /// The "lightBg" asset catalog color.
    static var lightBg: SwiftUI.Color { .init(.lightBg) }

    /// The "orange00" asset catalog color.
    static var orange00: SwiftUI.Color { .init(.orange00) }

    /// The "orangeE6" asset catalog color.
    static var orangeE6: SwiftUI.Color { .init(.orangeE6) }

    /// The "orangeHue" asset catalog color.
    static var orangeHue: SwiftUI.Color { .init(.orangeHue) }

    /// The "subBg" asset catalog color.
    static var subBg: SwiftUI.Color { .init(.subBg) }

    /// The "textBody" asset catalog color.
    static var textBody: SwiftUI.Color { .init(.textBody) }

    /// The "textFieldColor" asset catalog color.
    static var textField: SwiftUI.Color { .init(.textField) }

    /// The "textH" asset catalog color.
    static var textH: SwiftUI.Color { .init(.textH) }

    /// The "textHairline" asset catalog color.
    static var textHairline: SwiftUI.Color { .init(.textHairline) }

    /// The "textSub" asset catalog color.
    static var textSub: SwiftUI.Color { .init(.textSub) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "adult_products_image" asset catalog image.
    static var adultProducts: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .adultProducts)
#else
        .init()
#endif
    }

    /// The "apple" asset catalog image.
    static var apple: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .apple)
#else
        .init()
#endif
    }

    /// The "arrow_send" asset catalog image.
    static var arrowSend: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .arrowSend)
#else
        .init()
#endif
    }

    /// The "back" asset catalog image.
    static var back: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .back)
#else
        .init()
#endif
    }

    /// The "bags_image" asset catalog image.
    static var bags: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .bags)
#else
        .init()
#endif
    }

    /// The "camera_plus" asset catalog image.
    static var cameraPlus: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cameraPlus)
#else
        .init()
#endif
    }

    /// The "cardWhite" asset catalog image.
    static var cardWhite: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cardWhite)
#else
        .init()
#endif
    }

    /// The "cart_icon" asset catalog image.
    static var cartIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cartIcon)
#else
        .init()
#endif
    }

    /// The "cart_plus" asset catalog image.
    static var cartPlus: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cartPlus)
#else
        .init()
#endif
    }

    /// The "category" asset catalog image.
    static var category: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .category)
#else
        .init()
#endif
    }

    /// The "chain" asset catalog image.
    static var chain: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .chain)
#else
        .init()
#endif
    }

    /// The "clothing_image" asset catalog image.
    static var clothing: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .clothing)
#else
        .init()
#endif
    }

    /// The "computer_image" asset catalog image.
    static var computer: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .computer)
#else
        .init()
#endif
    }

    /// The "coupon" asset catalog image.
    static var coupon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .coupon)
#else
        .init()
#endif
    }

    /// The "diamond" asset catalog image.
    static var diamond: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .diamond)
#else
        .init()
#endif
    }

    /// The "edit_pencil" asset catalog image.
    static var editPencil: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .editPencil)
#else
        .init()
#endif
    }

    /// The "electronics_image" asset catalog image.
    static var electronics: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .electronics)
#else
        .init()
#endif
    }

    /// The "exit" asset catalog image.
    static var exit: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .exit)
#else
        .init()
#endif
    }

    /// The "explore_round" asset catalog image.
    static var exploreRound: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .exploreRound)
#else
        .init()
#endif
    }

    /// The "facebook" asset catalog image.
    static var facebook: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .facebook)
#else
        .init()
#endif
    }

    /// The "favourite" asset catalog image.
    static var favourite: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .favourite)
#else
        .init()
#endif
    }

    /// The "furniture_image" asset catalog image.
    static var furniture: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .furniture)
#else
        .init()
#endif
    }

    /// The "google" asset catalog image.
    static var google: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .google)
#else
        .init()
#endif
    }

    /// The "grocery_image" asset catalog image.
    static var grocery: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .grocery)
#else
        .init()
#endif
    }

    /// The "hair_wigs_image" asset catalog image.
    static var hairWigs: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .hairWigs)
#else
        .init()
#endif
    }

    /// The "health_image" asset catalog image.
    static var health: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .health)
#else
        .init()
#endif
    }

    /// The "heart" asset catalog image.
    static var heart: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .heart)
#else
        .init()
#endif
    }

    /// The "home" asset catalog image.
    static var home: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "home2" asset catalog image.
    static var home2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home2)
#else
        .init()
#endif
    }

    /// The "home_icon" asset catalog image.
    static var homeIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .homeIcon)
#else
        .init()
#endif
    }

    /// The "kiddies_image" asset catalog image.
    static var kiddies: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .kiddies)
#else
        .init()
#endif
    }

    /// The "kitchen_image" asset catalog image.
    static var kitchen: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .kitchen)
#else
        .init()
#endif
    }

    /// The "laptop" asset catalog image.
    static var laptop: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .laptop)
#else
        .init()
#endif
    }

    /// The "location" asset catalog image.
    static var location: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .location)
#else
        .init()
#endif
    }

    /// The "lock" asset catalog image.
    static var lock: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .lock)
#else
        .init()
#endif
    }

    /// The "login" asset catalog image.
    static var login: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .login)
#else
        .init()
#endif
    }

    /// The "love" asset catalog image.
    static var love: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .love)
#else
        .init()
#endif
    }

    /// The "mail" asset catalog image.
    static var mail: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .mail)
#else
        .init()
#endif
    }

    /// The "ok" asset catalog image.
    static var ok: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .ok)
#else
        .init()
#endif
    }

    /// The "pAddress" asset catalog image.
    static var pAddress: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pAddress)
#else
        .init()
#endif
    }

    /// The "pCard" asset catalog image.
    static var pCard: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pCard)
#else
        .init()
#endif
    }

    /// The "pLike" asset catalog image.
    static var pLike: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pLike)
#else
        .init()
#endif
    }

    /// The "pOrders" asset catalog image.
    static var pOrders: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pOrders)
#else
        .init()
#endif
    }

    /// The "pProfile" asset catalog image.
    static var pProfile: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pProfile)
#else
        .init()
#endif
    }

    /// The "pRefer" asset catalog image.
    static var pRefer: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .pRefer)
#else
        .init()
#endif
    }

    /// The "page" asset catalog image.
    static var page: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .page)
#else
        .init()
#endif
    }

    /// The "passkey" asset catalog image.
    static var passkey: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .passkey)
#else
        .init()
#endif
    }

    /// The "phone" asset catalog image.
    static var phone: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .phone)
#else
        .init()
#endif
    }

    /// The "phones_image" asset catalog image.
    static var phones: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .phones)
#else
        .init()
#endif
    }

    /// The "profile_icon" asset catalog image.
    static var profileIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .profileIcon)
#else
        .init()
#endif
    }

    /// The "sad" asset catalog image.
    static var sad: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sad)
#else
        .init()
#endif
    }

    /// The "sam" asset catalog image.
    static var sam: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sam)
#else
        .init()
#endif
    }

    /// The "save_white" asset catalog image.
    static var saveWhite: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .saveWhite)
#else
        .init()
#endif
    }

    /// The "search_icon" asset catalog image.
    static var searchIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .searchIcon)
#else
        .init()
#endif
    }

    /// The "sell_icon" asset catalog image.
    static var sellIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sellIcon)
#else
        .init()
#endif
    }

    /// The "sell_white" asset catalog image.
    static var sellWhite: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sellWhite)
#else
        .init()
#endif
    }

    /// The "send_small" asset catalog image.
    static var sendSmall: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .sendSmall)
#else
        .init()
#endif
    }

    /// The "setup_round" asset catalog image.
    static var setupRound: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .setupRound)
#else
        .init()
#endif
    }

    /// The "share" asset catalog image.
    static var share: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .share)
#else
        .init()
#endif
    }

    /// The "share 1" asset catalog image.
    static var share1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .share1)
#else
        .init()
#endif
    }

    /// The "shoes_image" asset catalog image.
    static var shoes: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .shoes)
#else
        .init()
#endif
    }

    /// The "slider1" asset catalog image.
    static var slider1: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .slider1)
#else
        .init()
#endif
    }

    /// The "slider2" asset catalog image.
    static var slider2: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .slider2)
#else
        .init()
#endif
    }

    /// The "splashIcon" asset catalog image.
    static var splashIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .splashIcon)
#else
        .init()
#endif
    }

    /// The "start_sell" asset catalog image.
    static var startSell: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .startSell)
#else
        .init()
#endif
    }

    /// The "success" asset catalog image.
    static var success: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .success)
#else
        .init()
#endif
    }

    /// The "title" asset catalog image.
    static var title: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .title)
#else
        .init()
#endif
    }

    /// The "type" asset catalog image.
    static var type: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .type)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "adult_products_image" asset catalog image.
    static var adultProducts: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .adultProducts)
#else
        .init()
#endif
    }

    /// The "apple" asset catalog image.
    static var apple: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .apple)
#else
        .init()
#endif
    }

    /// The "arrow_send" asset catalog image.
    static var arrowSend: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .arrowSend)
#else
        .init()
#endif
    }

    /// The "back" asset catalog image.
    static var back: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .back)
#else
        .init()
#endif
    }

    /// The "bags_image" asset catalog image.
    static var bags: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .bags)
#else
        .init()
#endif
    }

    /// The "camera_plus" asset catalog image.
    static var cameraPlus: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cameraPlus)
#else
        .init()
#endif
    }

    /// The "cardWhite" asset catalog image.
    static var cardWhite: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cardWhite)
#else
        .init()
#endif
    }

    /// The "cart_icon" asset catalog image.
    static var cartIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cartIcon)
#else
        .init()
#endif
    }

    /// The "cart_plus" asset catalog image.
    static var cartPlus: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cartPlus)
#else
        .init()
#endif
    }

    /// The "category" asset catalog image.
    static var category: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .category)
#else
        .init()
#endif
    }

    /// The "chain" asset catalog image.
    static var chain: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .chain)
#else
        .init()
#endif
    }

    /// The "clothing_image" asset catalog image.
    static var clothing: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .clothing)
#else
        .init()
#endif
    }

    /// The "computer_image" asset catalog image.
    static var computer: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .computer)
#else
        .init()
#endif
    }

    /// The "coupon" asset catalog image.
    static var coupon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .coupon)
#else
        .init()
#endif
    }

    /// The "diamond" asset catalog image.
    static var diamond: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .diamond)
#else
        .init()
#endif
    }

    /// The "edit_pencil" asset catalog image.
    static var editPencil: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .editPencil)
#else
        .init()
#endif
    }

    /// The "electronics_image" asset catalog image.
    static var electronics: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .electronics)
#else
        .init()
#endif
    }

    /// The "exit" asset catalog image.
    static var exit: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .exit)
#else
        .init()
#endif
    }

    /// The "explore_round" asset catalog image.
    static var exploreRound: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .exploreRound)
#else
        .init()
#endif
    }

    /// The "facebook" asset catalog image.
    static var facebook: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .facebook)
#else
        .init()
#endif
    }

    /// The "favourite" asset catalog image.
    static var favourite: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .favourite)
#else
        .init()
#endif
    }

    /// The "furniture_image" asset catalog image.
    static var furniture: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .furniture)
#else
        .init()
#endif
    }

    /// The "google" asset catalog image.
    static var google: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .google)
#else
        .init()
#endif
    }

    /// The "grocery_image" asset catalog image.
    static var grocery: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .grocery)
#else
        .init()
#endif
    }

    /// The "hair_wigs_image" asset catalog image.
    static var hairWigs: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .hairWigs)
#else
        .init()
#endif
    }

    /// The "health_image" asset catalog image.
    static var health: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .health)
#else
        .init()
#endif
    }

    /// The "heart" asset catalog image.
    static var heart: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .heart)
#else
        .init()
#endif
    }

    /// The "home" asset catalog image.
    static var home: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "home2" asset catalog image.
    static var home2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home2)
#else
        .init()
#endif
    }

    /// The "home_icon" asset catalog image.
    static var homeIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .homeIcon)
#else
        .init()
#endif
    }

    /// The "kiddies_image" asset catalog image.
    static var kiddies: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .kiddies)
#else
        .init()
#endif
    }

    /// The "kitchen_image" asset catalog image.
    static var kitchen: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .kitchen)
#else
        .init()
#endif
    }

    /// The "laptop" asset catalog image.
    static var laptop: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .laptop)
#else
        .init()
#endif
    }

    /// The "location" asset catalog image.
    static var location: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .location)
#else
        .init()
#endif
    }

    /// The "lock" asset catalog image.
    static var lock: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .lock)
#else
        .init()
#endif
    }

    /// The "login" asset catalog image.
    static var login: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .login)
#else
        .init()
#endif
    }

    /// The "love" asset catalog image.
    static var love: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .love)
#else
        .init()
#endif
    }

    /// The "mail" asset catalog image.
    static var mail: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .mail)
#else
        .init()
#endif
    }

    /// The "ok" asset catalog image.
    static var ok: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .ok)
#else
        .init()
#endif
    }

    /// The "pAddress" asset catalog image.
    static var pAddress: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pAddress)
#else
        .init()
#endif
    }

    /// The "pCard" asset catalog image.
    static var pCard: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pCard)
#else
        .init()
#endif
    }

    /// The "pLike" asset catalog image.
    static var pLike: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pLike)
#else
        .init()
#endif
    }

    /// The "pOrders" asset catalog image.
    static var pOrders: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pOrders)
#else
        .init()
#endif
    }

    /// The "pProfile" asset catalog image.
    static var pProfile: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pProfile)
#else
        .init()
#endif
    }

    /// The "pRefer" asset catalog image.
    static var pRefer: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .pRefer)
#else
        .init()
#endif
    }

    /// The "page" asset catalog image.
    static var page: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .page)
#else
        .init()
#endif
    }

    /// The "passkey" asset catalog image.
    static var passkey: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .passkey)
#else
        .init()
#endif
    }

    /// The "phone" asset catalog image.
    static var phone: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .phone)
#else
        .init()
#endif
    }

    /// The "phones_image" asset catalog image.
    static var phones: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .phones)
#else
        .init()
#endif
    }

    /// The "profile_icon" asset catalog image.
    static var profileIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .profileIcon)
#else
        .init()
#endif
    }

    /// The "sad" asset catalog image.
    static var sad: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sad)
#else
        .init()
#endif
    }

    /// The "sam" asset catalog image.
    static var sam: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sam)
#else
        .init()
#endif
    }

    /// The "save_white" asset catalog image.
    static var saveWhite: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .saveWhite)
#else
        .init()
#endif
    }

    /// The "search_icon" asset catalog image.
    static var searchIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .searchIcon)
#else
        .init()
#endif
    }

    /// The "sell_icon" asset catalog image.
    static var sellIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sellIcon)
#else
        .init()
#endif
    }

    /// The "sell_white" asset catalog image.
    static var sellWhite: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sellWhite)
#else
        .init()
#endif
    }

    /// The "send_small" asset catalog image.
    static var sendSmall: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .sendSmall)
#else
        .init()
#endif
    }

    /// The "setup_round" asset catalog image.
    static var setupRound: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .setupRound)
#else
        .init()
#endif
    }

    /// The "share" asset catalog image.
    static var share: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .share)
#else
        .init()
#endif
    }

    /// The "share 1" asset catalog image.
    static var share1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .share1)
#else
        .init()
#endif
    }

    /// The "shoes_image" asset catalog image.
    static var shoes: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .shoes)
#else
        .init()
#endif
    }

    /// The "slider1" asset catalog image.
    static var slider1: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .slider1)
#else
        .init()
#endif
    }

    /// The "slider2" asset catalog image.
    static var slider2: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .slider2)
#else
        .init()
#endif
    }

    /// The "splashIcon" asset catalog image.
    static var splashIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .splashIcon)
#else
        .init()
#endif
    }

    /// The "start_sell" asset catalog image.
    static var startSell: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .startSell)
#else
        .init()
#endif
    }

    /// The "success" asset catalog image.
    static var success: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .success)
#else
        .init()
#endif
    }

    /// The "title" asset catalog image.
    static var title: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .title)
#else
        .init()
#endif
    }

    /// The "type" asset catalog image.
    static var type: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .type)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

