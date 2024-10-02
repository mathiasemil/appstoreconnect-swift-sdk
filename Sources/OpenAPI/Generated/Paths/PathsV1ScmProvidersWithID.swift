// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.ScmProviders {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/scmProviders/{id}`
		public let path: String

		public func get(fieldsScmProviders: [FieldsScmProviders]? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmProviderResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsScmProviders), id: "scmProviders_getInstance")
		}

		private func makeGetQuery(_ fieldsScmProviders: [FieldsScmProviders]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]", explode: false)
			return encoder.items
		}

		public enum FieldsScmProviders: String, Codable, CaseIterable {
			case scmProviderType
			case url
			case repositories
		}
	}
}
