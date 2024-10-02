// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appClips: AppClips {
		AppClips(path: path + "/appClips")
	}

	public struct AppClips {
		/// Path: `/v1/apps/{id}/appClips`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps_appClips_getToManyRelated")
		}

		public struct GetParameters {
			public var filterBundleID: [String]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var limit: Int?
			public var include: [Include]?
			public var limitAppClipDefaultExperiences: Int?

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case app
				case appClipDefaultExperiences
				case appClipAdvancedExperiences
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case name
				case bundleID = "bundleId"
				case sku
				case primaryLocale
				case isOrEverWasMadeForKids
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
				case contentRightsDeclaration
				case streamlinedPurchasingEnabled
				case appEncryptionDeclarations
				case ciProduct
				case betaTesters
				case betaGroups
				case appStoreVersions
				case preReleaseVersions
				case betaAppLocalizations
				case builds
				case betaLicenseAgreement
				case betaAppReviewDetail
				case appInfos
				case appClips
				case appPricePoints
				case endUserLicenseAgreement
				case preOrder
				case appPriceSchedule
				case appAvailability
				case appAvailabilityV2
				case inAppPurchases
				case subscriptionGroups
				case gameCenterEnabledVersions
				case perfPowerMetrics
				case appCustomProductPages
				case inAppPurchasesV2
				case promotedPurchases
				case appEvents
				case reviewSubmissions
				case subscriptionGracePeriod
				case customerReviews
				case gameCenterDetail
				case appStoreVersionExperimentsV2
				case alternativeDistributionKey
				case analyticsReportRequests
				case marketplaceSearchDetail
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case releaseWithAppStoreVersion
				case appClipDefaultExperienceLocalizations
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceTemplate
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appClipDefaultExperiences
			}

			public init(filterBundleID: [String]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, limit: Int? = nil, include: [Include]? = nil, limitAppClipDefaultExperiences: Int? = nil) {
				self.filterBundleID = filterBundleID
				self.fieldsAppClips = fieldsAppClips
				self.fieldsApps = fieldsApps
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.limit = limit
				self.include = include
				self.limitAppClipDefaultExperiences = limitAppClipDefaultExperiences
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterBundleID, forKey: "filter[bundleId]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppClipDefaultExperiences, forKey: "limit[appClipDefaultExperiences]")
				return encoder.items
			}
		}
	}
}
