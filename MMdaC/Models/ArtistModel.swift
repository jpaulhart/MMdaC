//
//  ArtistModel.swift
//  MerisiDB
//
//  Created by Paul Hart on 2021-08-22.
//

import Foundation

/**
 
 
 */
class Artist: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case id, name, fileName, shortName, paintings, galleries
    }

    @Published var id: UUID = UUID()
    @Published var name: String = "Empty"
    @Published var fileName: String = ""
    @Published var shortName:String = ""
    @Published var paintings: [Painting] = []
    @Published var galleries: [Gallery] = []

    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(UUID.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        fileName = try container.decode(String.self, forKey: .fileName)
        shortName = try container.decode(String.self, forKey: .shortName)
        paintings = try container.decode([Painting].self, forKey: .paintings)
        galleries = try container.decode([Gallery].self, forKey: .galleries)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(shortName, forKey: .shortName)
        try container.encode(paintings, forKey: .paintings)
        try container.encode(galleries, forKey: .galleries)
    }
}

/**
 
 
 */
class Painting: Identifiable, ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case id, name, year, medium, size, imageLarge, imageSmall, gallery, galleryId, galleryAddress, galleryCity, galleryCountry, galleryLatitude, galleryLongitude
    }

    @Published var id: Int = 0
    @Published var name: String = ""
    @Published var year: String = ""
    @Published var medium: String = ""
    @Published var size: String = ""
    @Published var imageLarge: String = ""
    @Published var imageSmall: String = ""
    @Published var gallery: String = ""
    @Published var galleryId: String = ""
    @Published var galleryAddress: String = ""
    @Published var galleryCity: String = ""
    @Published var galleryCountry: String = ""
    @Published var galleryLatitude: Double = 0.0
    @Published var galleryLongitude: Double = 0.0


    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        year = try container.decode(String.self, forKey: .year)
        medium = try container.decode(String.self, forKey: .medium)
        size = try container.decode(String.self, forKey: .size)
        imageLarge = try container.decode(String.self, forKey: .imageLarge)
        imageSmall = try container.decode(String.self, forKey: .imageSmall)
        gallery = try container.decode(String.self, forKey: .gallery)
        galleryAddress = try container.decode(String.self, forKey: .galleryAddress)
        galleryCity = try container.decode(String.self, forKey: .galleryCity)
        galleryCountry = try container.decode(String.self, forKey: .galleryCountry)
        galleryLatitude = try container.decode(Double.self, forKey: .galleryLatitude)
        galleryLongitude = try container.decode(Double.self, forKey: .galleryLongitude)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(year, forKey: .year)
        try container.encode(medium, forKey: .medium)
        try container.encode(size, forKey: .size)
        try container.encode(imageLarge, forKey: .imageLarge)
        try container.encode(imageSmall, forKey: .imageSmall)
        try container.encode(gallery, forKey: .gallery)
        try container.encode(galleryId, forKey: .galleryId)
        try container.encode(galleryAddress, forKey: .galleryAddress)
        try container.encode(galleryCity, forKey: .galleryCity)
        try container.encode(galleryCountry, forKey: .galleryCountry)
        try container.encode(galleryLatitude, forKey: .galleryLatitude)
        try container.encode(galleryLongitude, forKey: .galleryLongitude)
    }

}

/**
 
 
 */
class Gallery: Identifiable, ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case id, name, address, city, country, website, latitude, longitude, galleryId, image
    }

    @Published var id: UUID = UUID()
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var city: String = ""
    @Published var country: String = ""
    @Published var website: String = ""
    @Published var latitude: Double = 0.0
    @Published var longitude: Double = 0.0
    @Published var galleryId: String = ""
    @Published var image: String = ""

    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(UUID.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        address = try container.decode(String.self, forKey: .address)
        city = try container.decode(String.self, forKey: .city)
        country = try container.decode(String.self, forKey: .country)
        website = try container.decode(String.self, forKey: .website)
        latitude = try container.decode(Double.self, forKey: .latitude)
        longitude = try container.decode(Double.self, forKey: .longitude)
        galleryId = try container.decode(String.self, forKey: .galleryId)
        image = try container.decode(String.self, forKey: .image)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(address, forKey: .address)
        try container.encode(city, forKey: .city)
        try container.encode(country, forKey: .country)
        try container.encode(website, forKey: .website)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
        try container.encode(galleryId, forKey: .galleryId)
        try container.encode(image, forKey: .image)
    }
}

