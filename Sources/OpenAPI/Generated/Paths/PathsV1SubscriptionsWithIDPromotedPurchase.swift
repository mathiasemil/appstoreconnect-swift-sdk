// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID {
	public var promotedPurchase: PromotedPurchase {
		PromotedPurchase(path: path + "/promotedPurchase")
	}

	public struct PromotedPurchase {
		/// Path: `/v1/subscriptions/{id}/promotedPurchase`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptions_promotedPurchase_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var fieldsInAppPurchases: [FieldsInAppPurchases]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?
			public var include: [Include]?
			public var limitPromotionImages: Int?

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case visibleForAllUsers
				case enabled
				case state
				case app
				case inAppPurchaseV2
				case subscription
				case promotionImages
			}

			public enum FieldsInAppPurchases: String, Codable, CaseIterable {
				case name
				case productID = "productId"
				case inAppPurchaseType
				case state
				case reviewNote
				case familySharable
				case contentHosting
				case app
				case inAppPurchaseLocalizations
				case pricePoints
				case content
				case appStoreReviewScreenshot
				case promotedPurchase
				case iapPriceSchedule
				case inAppPurchaseAvailability
				case images
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case name
				case productID = "productId"
				case familySharable
				case state
				case subscriptionPeriod
				case reviewNote
				case groupLevel
				case subscriptionLocalizations
				case appStoreReviewScreenshot
				case group
				case introductoryOffers
				case promotionalOffers
				case offerCodes
				case prices
				case pricePoints
				case promotedPurchase
				case subscriptionAvailability
				case winBackOffers
				case images
			}

			public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case assetToken
				case imageAsset
				case assetType
				case uploadOperations
				case uploaded
				case state
				case promotedPurchase
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseV2
				case subscription
				case promotionImages
			}

			public init(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, include: [Include]? = nil, limitPromotionImages: Int? = nil) {
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.fieldsInAppPurchases = fieldsInAppPurchases
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsPromotedPurchaseImages = fieldsPromotedPurchaseImages
				self.include = include
				self.limitPromotionImages = limitPromotionImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
				return encoder.items
			}
		}
	}
}
