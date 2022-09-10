//
//  PieProgressView.swift
//  MiniApp92-SwiftUI-ProgressCharts
//
//  Created by 前田航汰 on 2022/09/09.
//

import SwiftUI

struct PieProgressView: View {
    // ３日前 .foregroundColor(Color.red)
    // ５日前 .foregroundColor(Color.orange)
    // １０日前 .foregroundColor(Color.blue)
    // ３０日前 .foregroundColor(Color.green)

    var value: CGFloat
    let pieRedTextColor = Color.init(red: 1, green: 0, blue: 0)
    let pieRedBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)
    let pieOrangeTextColor = Color.init(red: 0, green: 0.8, blue: 0)
    let pieOrangeBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)
    let pieBlueTextColor = Color.init(red: 0, green: 0.8, blue: 0)
    let pieBlueBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)
    let pieGreenTextColor = Color.init(red: 0, green: 0.8, blue: 0)
    let pieGreenBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)

    let pieGrayColor = Color.init(red: 0.7, green: 0.7, blue: 0.7)

    var body: some View {

            ZStack {
                Circle()
                    .fill(Color.black.opacity(0.08))
                PieShape(value: value)
                    .fill(pieGrayColor)
                    .rotationEffect(.degrees(-90))
            }

    }
}

struct PieShape: Shape {

    var value: CGFloat

    var animatableData: CGFloat {
        get { value }
        set { value = newValue }
    }

    func path(in rect: CGRect) -> Path {
        Path { path in
            let center = CGPoint(x: rect.midX, y: rect.midY)
            path.move(to: center)
            path.addArc(
                center: center,
                radius: rect.width / 2,
                startAngle: .degrees(0),
                endAngle: .degrees(Double(360 * value)),
                clockwise: false
            )
            path.closeSubpath()
        }
    }
}
