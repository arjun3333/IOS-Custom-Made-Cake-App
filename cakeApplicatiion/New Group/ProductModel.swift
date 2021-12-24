//
//  ProductModel.swift
//  cakeApplicatiion
//
//  Created by arjun on 2021-12-23.
//

import Foundation


extension Array {
    func chunked(_ size: Int) -> [[Element]] {
        stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size , count) ])

        }
    }
}

struct Cake: Identifiable {
    let id = UUID( )
    let name: String
    let image: String
    let price: Int
    let description: String

}

extension Cake {
    static func getAllCakes( ) -> [Cake] {
        return [
            Cake(name: "Cake1", image: "cake1", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake2", image: "cake2", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake3", image: "cake8", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake4", image: "cake4", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake5", image: "cake5", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake6", image: "cake6", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake7", image: "cake7", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake8", image: "cake8", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake9", image: "cake9", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake10", image: "cake10", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake11", image: "cake11", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake12", image: "cake12", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake13", image: "cake25", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake14", image: "cake14", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake15", image: "cake22", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake16", image: "cake16", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake17", image: "cake17", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake18", image: "cake24", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake19", image: "cake19", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
            Cake(name: "Cake20", image: "cake20", price: 200,
                 description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. The result? A stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor. The familiar birthday cake flavor and fun sprinkles take you back to childhood!"),
        ]
    }
}
