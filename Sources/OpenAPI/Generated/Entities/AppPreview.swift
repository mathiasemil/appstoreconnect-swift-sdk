// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppPreview: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case appPreviews
	}

	public struct Attributes: Codable {
		public var fileSize: Int?
		public var fileName: String?
		public var sourceFileChecksum: String?
		public var previewFrameTimeCode: String?
		public var mimeType: String?
		public var videoURL: String?
		public var previewImage: ImageAsset?
		public var uploadOperations: [UploadOperation]?
		public var assetDeliveryState: AppMediaAssetState?

		public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, previewFrameTimeCode: String? = nil, mimeType: String? = nil, videoURL: String? = nil, previewImage: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
			self.fileSize = fileSize
			self.fileName = fileName
			self.sourceFileChecksum = sourceFileChecksum
			self.previewFrameTimeCode = previewFrameTimeCode
			self.mimeType = mimeType
			self.videoURL = videoURL
			self.previewImage = previewImage
			self.uploadOperations = uploadOperations
			self.assetDeliveryState = assetDeliveryState
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.fileSize = try values.decodeIfPresent(Int.self, forKey: "fileSize")
			self.fileName = try values.decodeIfPresent(String.self, forKey: "fileName")
			self.sourceFileChecksum = try values.decodeIfPresent(String.self, forKey: "sourceFileChecksum")
			self.previewFrameTimeCode = try values.decodeIfPresent(String.self, forKey: "previewFrameTimeCode")
			self.mimeType = try values.decodeIfPresent(String.self, forKey: "mimeType")
			self.videoURL = try values.decodeIfPresent(String.self, forKey: "videoUrl")
			self.previewImage = try values.decodeIfPresent(ImageAsset.self, forKey: "previewImage")
			self.uploadOperations = try values.decodeIfPresent([UploadOperation].self, forKey: "uploadOperations")
			self.assetDeliveryState = try values.decodeIfPresent(AppMediaAssetState.self, forKey: "assetDeliveryState")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(fileSize, forKey: "fileSize")
			try values.encodeIfPresent(fileName, forKey: "fileName")
			try values.encodeIfPresent(sourceFileChecksum, forKey: "sourceFileChecksum")
			try values.encodeIfPresent(previewFrameTimeCode, forKey: "previewFrameTimeCode")
			try values.encodeIfPresent(mimeType, forKey: "mimeType")
			try values.encodeIfPresent(videoURL, forKey: "videoUrl")
			try values.encodeIfPresent(previewImage, forKey: "previewImage")
			try values.encodeIfPresent(uploadOperations, forKey: "uploadOperations")
			try values.encodeIfPresent(assetDeliveryState, forKey: "assetDeliveryState")
		}
	}

	public struct Relationships: Codable {
		public var appPreviewSet: AppPreviewSet?

		public struct AppPreviewSet: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case appPreviewSets
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

		public init(appPreviewSet: AppPreviewSet? = nil) {
			self.appPreviewSet = appPreviewSet
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.appPreviewSet = try values.decodeIfPresent(AppPreviewSet.self, forKey: "appPreviewSet")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(appPreviewSet, forKey: "appPreviewSet")
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
