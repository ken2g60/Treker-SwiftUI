//
//  TipView.swift
//  Treker
//
//  Created by knight on 12/22/20.
//

import SwiftUI

struct TipView: View {
    let tips: [Tip]
    
    init(){
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
      
        List(tips, id: \.text) { tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
