// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BundleIDs.WithID {
	public var bundleIDCapabilities: BundleIDCapabilities {
		BundleIDCapabilities(path: path + "/bundleIdCapabilities")
	}

	public struct BundleIDCapabilities {
		/// Path: `/v1/bundleIds/{id}/bundleIdCapabilities`
		public let path: String

		public func get(fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BundleIDCapabilitiesWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBundleIDCapabilities, limit), id: "bundleIds_bundleIdCapabilities_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBundleIDCapabilities, forKey: "fields[bundleIdCapabilities]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsBundleIDCapabilities: String, Codable, CaseIterable {
			case capabilityType
			case settings
			case bundleID = "bundleId"
		}
	}
}
