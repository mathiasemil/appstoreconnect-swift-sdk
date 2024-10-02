// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionAvailabilities {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionAvailabilities/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionAvailabilityResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptionAvailabilities_getInstance")
		}

		public struct GetParameters {
			public var fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var include: [Include]?
			public var limitAvailableTerritories: Int?

			public enum FieldsSubscriptionAvailabilities: String, Codable, CaseIterable {
				case availableInNewTerritories
				case subscription
				case availableTerritories
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case subscription
				case availableTerritories
			}

			public init(fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, include: [Include]? = nil, limitAvailableTerritories: Int? = nil) {
				self.fieldsSubscriptionAvailabilities = fieldsSubscriptionAvailabilities
				self.fieldsTerritories = fieldsTerritories
				self.include = include
				self.limitAvailableTerritories = limitAvailableTerritories
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionAvailabilities, forKey: "fields[subscriptionAvailabilities]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
				return encoder.items
			}
		}
	}
}
