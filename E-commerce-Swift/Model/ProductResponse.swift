//
//  ProductResponse.swift
//  E-commerce-Swift
//
//  Created by Asim Seferli on 09.03.24.
//

import UIKit

import Foundation

// MARK: - Welcome3
struct ProductListData {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product {
    let id: Int
    let title, productDescription: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}
