// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionLocalizations/{id}`
		public let path: String

		public func get(fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionLocalizationResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionLocalizations, include), id: "subscriptionLocalizations_getInstance")
		}

		private func makeGetQuery(_ fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsSubscriptionLocalizations, forKey: "fields[subscriptionLocalizations]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsSubscriptionLocalizations: String, Codable, CaseIterable {
			case name
			case locale
			case description
			case state
			case subscription
		}

		public enum Include: String, Codable, CaseIterable {
			case subscription
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionLocalizationResponse> {
			Request(path: path, method: "PATCH", body: body, id: "subscriptionLocalizations_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "subscriptionLocalizations_deleteInstance")
		}
	}
}
