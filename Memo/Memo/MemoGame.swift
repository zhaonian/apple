//
// Created by Zhaonian Luan on 7/22/20.
// Copyright (c) 2020 zluan.io. All rights reserved.
//

import Foundation

struct MemoGame<CardContent> {

    var cards: Array<Card>

    init(totalNumberOfPairs: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<totalNumberOfPairs {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, isFaceUp: true, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, isFaceUp: true, content: content))
        }
    }

    func chooseCard(card: Card) {
        print("Card chosen: \(card.content)")
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool
        var content: CardContent
    }
}
