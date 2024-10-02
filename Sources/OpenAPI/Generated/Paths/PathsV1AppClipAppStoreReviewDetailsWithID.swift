// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipAppStoreReviewDetails {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipAppStoreReviewDetails/{id}`
		public let path: String

		public func get(fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipAppStoreReviewDetailResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAppClipAppStoreReviewDetails, include), id: "appClipAppStoreReviewDetails_getInstance")
		}

		private func makeGetQuery(_ fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
			case invocationURLs = "invocationUrls"
			case appClipDefaultExperience
		}

		public enum Include: String, Codable, CaseIterable {
			case appClipDefaultExperience
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppClipAppStoreReviewDetailUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipAppStoreReviewDetailResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appClipAppStoreReviewDetails_updateInstance")
		}
	}
}
