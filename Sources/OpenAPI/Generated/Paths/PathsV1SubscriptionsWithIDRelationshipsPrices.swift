// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/subscriptions/{id}/relationships/prices`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionPricesLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "subscriptions_prices_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.SubscriptionPricesLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "DELETE", body: body, id: "subscriptions_prices_deleteToManyRelationship")
		}
	}
}
