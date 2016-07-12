//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
	var items: [Item] = []
	
	func totalPriceInCents() -> Int	{
		var totalPrice = 0
		for item in items {
			totalPrice += item.priceInCents
		}
		return totalPrice
	}
	
	func addItem(item: Item) {
		items.append(item)
	}
	
	func removeItem(item: Item) {
		if !items.contains(item) { return }
		
		let indexToRemove = items.indexOf(item)
		if let index = indexToRemove {
			items.removeAtIndex(index)
		}
	}
	
	func itemsWithName(name: String) -> [Item] {
		let matchingItems = items.filter { (item) -> Bool in
			item.name == name
		}
		return matchingItems
	}
	
	func itemsWithMinimumPriceInCents(minimumPrice: Int) -> [Item] {
		let matchingItems = items.filter { (item) -> Bool in
			item.priceInCents >= minimumPrice
		}
		return matchingItems
	}
	
	func itemsWithMaximumPriceInCents(maximumPrice: Int) -> [Item] {
		let matchingItems = items.filter { (item) -> Bool in
			item.priceInCents <= maximumPrice
		}
		return matchingItems
	}
	
	
	
	
	
	
	
	
	
}