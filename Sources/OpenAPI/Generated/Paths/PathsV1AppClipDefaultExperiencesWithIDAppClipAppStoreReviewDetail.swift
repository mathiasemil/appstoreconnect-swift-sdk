// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperiences.WithID {
	public var appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail {
		AppClipAppStoreReviewDetail(path: path + "/appClipAppStoreReviewDetail")
	}

	public struct AppClipAppStoreReviewDetail {
		/// Path: `/v1/appClipDefaultExperiences/{id}/appClipAppStoreReviewDetail`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipAppStoreReviewDetailResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipDefaultExperiences_appClipAppStoreReviewDetail_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var include: [Include]?

			public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
				case invocationURLs = "invocationUrls"
				case appClipDefaultExperience
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
				case appClipDefaultExperience
			}

			public init(fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, include: [Include]? = nil) {
				self.fieldsAppClipAppStoreReviewDetails = fieldsAppClipAppStoreReviewDetails
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
