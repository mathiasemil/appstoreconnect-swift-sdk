// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPreviewSets.WithID {
	public var appPreviews: AppPreviews {
		AppPreviews(path: path + "/appPreviews")
	}

	public struct AppPreviews {
		/// Path: `/v1/appPreviewSets/{id}/appPreviews`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPreviewsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appPreviewSets_appPreviews_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppPreviews: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case previewFrameTimeCode
				case mimeType
				case videoURL = "videoUrl"
				case previewImage
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case appPreviewSet
			}

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case previewType
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appPreviews
			}

			public enum Include: String, Codable, CaseIterable {
				case appPreviewSet
			}

			public init(fieldsAppPreviews: [FieldsAppPreviews]? = nil, fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppPreviews = fieldsAppPreviews
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
