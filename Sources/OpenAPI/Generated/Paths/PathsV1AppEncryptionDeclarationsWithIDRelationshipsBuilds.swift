// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEncryptionDeclarations.WithID.Relationships {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/appEncryptionDeclarations/{id}/relationships/builds`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func post(_ body: AppStoreConnect_Swift_SDK.AppEncryptionDeclarationBuildsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "POST", body: body, id: "appEncryptionDeclarations_builds_createToManyRelationship")
		}
	}
}
