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
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-appClips-get_to_many_related")
		}

		public struct GetParameters {
			public var filterBundleID: [String]?
			public var fieldsAppClips: [FieldsAppClips]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var limit: Int?
			public var limitAppClipDefaultExperiences: Int?
			public var include: [Include]?

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case alternativeDistributionKey
				case analyticsReportRequests
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case marketplaceSearchDetail
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appClipDefaultExperiences
			}

			public init(filterBundleID: [String]? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, limit: Int? = nil, limitAppClipDefaultExperiences: Int? = nil, include: [Include]? = nil) {
				self.filterBundleID = filterBundleID
				self.fieldsAppClips = fieldsAppClips
				self.fieldsApps = fieldsApps
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.limit = limit
				self.limitAppClipDefaultExperiences = limitAppClipDefaultExperiences
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterBundleID, forKey: "filter[bundleId]")
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(limitAppClipDefaultExperiences, forKey: "limit[appClipDefaultExperiences]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
