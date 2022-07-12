// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Builds.WithID.Relationships {
	public var diagnosticSignatures: DiagnosticSignatures {
		DiagnosticSignatures(path: path + "/diagnosticSignatures")
	}

	public struct DiagnosticSignatures {
		/// Path: `/v1/builds/{id}/relationships/diagnosticSignatures`
		public let path: String
	}
}