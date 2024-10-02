// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TerritoryAvailability: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case territoryAvailabilities
	}

	public struct Attributes: Codable {
		public var isAvailable: Bool?
		public var releaseDate: String?
		public var isPreOrderEnabled: Bool?
		public var preOrderPublishDate: String?
		public var contentStatuses: [ContentStatus]?

		public enum ContentStatus: String, Codable, CaseIterable {
			case available = "AVAILABLE"
			case availableForPreorderOnDate = "AVAILABLE_FOR_PREORDER_ON_DATE"
			case processingToNotAvailable = "PROCESSING_TO_NOT_AVAILABLE"
			case processingToAvailable = "PROCESSING_TO_AVAILABLE"
			case processingToPreOrder = "PROCESSING_TO_PRE_ORDER"
			case availableForSaleUnreleasedApp = "AVAILABLE_FOR_SALE_UNRELEASED_APP"
			case preorderOnUnreleasedApp = "PREORDER_ON_UNRELEASED_APP"
			case availableForPreorder = "AVAILABLE_FOR_PREORDER"
			case missingRating = "MISSING_RATING"
			case cannotSellRestrictedRating = "CANNOT_SELL_RESTRICTED_RATING"
			case brazilRequiredTaxID = "BRAZIL_REQUIRED_TAX_ID"
			case missingGrn = "MISSING_GRN"
			case unverifiedGrn = "UNVERIFIED_GRN"
			case icpNumberInvalid = "ICP_NUMBER_INVALID"
			case icpNumberMissing = "ICP_NUMBER_MISSING"
			case cannotSellSeventeenPlusApps = "CANNOT_SELL_SEVENTEEN_PLUS_APPS"
			case cannotSellSexuallyExplicit = "CANNOT_SELL_SEXUALLY_EXPLICIT"
			case cannotSellNonIosGames = "CANNOT_SELL_NON_IOS_GAMES"
			case cannotSellSeventeenPlusGames = "CANNOT_SELL_SEVENTEEN_PLUS_GAMES"
			case cannotSellFrequentIntenseGambling = "CANNOT_SELL_FREQUENT_INTENSE_GAMBLING"
			case cannotSellCasino = "CANNOT_SELL_CASINO"
			case cannotSellCasinoWithoutGrac = "CANNOT_SELL_CASINO_WITHOUT_GRAC"
			case cannotSellCasinoWithoutAgeVerification = "CANNOT_SELL_CASINO_WITHOUT_AGE_VERIFICATION"
			case cannotSellFrequentIntenseAlcoholTobaccoDrugs = "CANNOT_SELL_FREQUENT_INTENSE_ALCOHOL_TOBACCO_DRUGS"
			case cannotSellFrequentIntenseViolence = "CANNOT_SELL_FREQUENT_INTENSE_VIOLENCE"
			case cannotSellFrequentIntenseSexualContentNudity = "CANNOT_SELL_FREQUENT_INTENSE_SEXUAL_CONTENT_NUDITY"
			case cannotSellInfrequentMildAlcoholTobaccoDrugs = "CANNOT_SELL_INFREQUENT_MILD_ALCOHOL_TOBACCO_DRUGS"
			case cannotSellInfrequentMildSexualContentNudity = "CANNOT_SELL_INFREQUENT_MILD_SEXUAL_CONTENT_NUDITY"
			case cannotSellAdultOnly = "CANNOT_SELL_ADULT_ONLY"
			case cannotSellFrequentIntense = "CANNOT_SELL_FREQUENT_INTENSE"
			case cannotSellFrequentIntenseWithoutGrac = "CANNOT_SELL_FREQUENT_INTENSE_WITHOUT_GRAC"
			case cannotSellGamblingContests = "CANNOT_SELL_GAMBLING_CONTESTS"
			case cannotSellGambling = "CANNOT_SELL_GAMBLING"
			case cannotSellContests = "CANNOT_SELL_CONTESTS"
			case cannotSell = "CANNOT_SELL"
		}

		public init(isAvailable: Bool? = nil, releaseDate: String? = nil, isPreOrderEnabled: Bool? = nil, preOrderPublishDate: String? = nil, contentStatuses: [ContentStatus]? = nil) {
			self.isAvailable = isAvailable
			self.releaseDate = releaseDate
			self.isPreOrderEnabled = isPreOrderEnabled
			self.preOrderPublishDate = preOrderPublishDate
			self.contentStatuses = contentStatuses
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.isAvailable = try values.decodeIfPresent(Bool.self, forKey: "available")
			self.releaseDate = try values.decodeIfPresent(String.self, forKey: "releaseDate")
			self.isPreOrderEnabled = try values.decodeIfPresent(Bool.self, forKey: "preOrderEnabled")
			self.preOrderPublishDate = try values.decodeIfPresent(String.self, forKey: "preOrderPublishDate")
			self.contentStatuses = try values.decodeIfPresent([ContentStatus].self, forKey: "contentStatuses")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(isAvailable, forKey: "available")
			try values.encodeIfPresent(releaseDate, forKey: "releaseDate")
			try values.encodeIfPresent(isPreOrderEnabled, forKey: "preOrderEnabled")
			try values.encodeIfPresent(preOrderPublishDate, forKey: "preOrderPublishDate")
			try values.encodeIfPresent(contentStatuses, forKey: "contentStatuses")
		}
	}

	public struct Relationships: Codable {
		public var territory: Territory?

		public struct Territory: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case territories
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(territory: Territory? = nil) {
			self.territory = territory
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.territory = try values.decodeIfPresent(Territory.self, forKey: "territory")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(territory, forKey: "territory")
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
