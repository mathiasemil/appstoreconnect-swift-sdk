// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DiagnosticSignature: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case diagnosticSignatures
	}

	public struct Attributes: Codable {
		public var diagnosticType: DiagnosticType?
		public var signature: String?
		public var weight: Double?
		public var insight: DiagnosticInsight?

		public enum DiagnosticType: String, Codable, CaseIterable {
			case diskWrites = "DISK_WRITES"
			case hangs = "HANGS"
			case launches = "LAUNCHES"
		}

		public init(diagnosticType: DiagnosticType? = nil, signature: String? = nil, weight: Double? = nil, insight: DiagnosticInsight? = nil) {
			self.diagnosticType = diagnosticType
			self.signature = signature
			self.weight = weight
			self.insight = insight
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.diagnosticType = try values.decodeIfPresent(DiagnosticType.self, forKey: "diagnosticType")
			self.signature = try values.decodeIfPresent(String.self, forKey: "signature")
			self.weight = try values.decodeIfPresent(Double.self, forKey: "weight")
			self.insight = try values.decodeIfPresent(DiagnosticInsight.self, forKey: "insight")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(diagnosticType, forKey: "diagnosticType")
			try values.encodeIfPresent(signature, forKey: "signature")
			try values.encodeIfPresent(weight, forKey: "weight")
			try values.encodeIfPresent(insight, forKey: "insight")
		}
	}

	public struct Relationships: Codable {
		public var logs: Logs?

		public struct Logs: Codable {
			public var links: RelationshipLinks?

			public init(links: RelationshipLinks? = nil) {
				self.links = links
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
			}
		}

		public init(logs: Logs? = nil) {
			self.logs = logs
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.logs = try values.decodeIfPresent(Logs.self, forKey: "logs")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(logs, forKey: "logs")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
