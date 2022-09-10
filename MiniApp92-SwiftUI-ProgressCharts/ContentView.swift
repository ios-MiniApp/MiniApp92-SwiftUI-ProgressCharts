//
//  ContentView.swift
//  MiniApp92-SwiftUI-ProgressCharts
//
//  Created by 前田航汰 on 2022/09/09.
//

import SwiftUI

struct ContentView: View {
    // ３日前 .foregroundColor(Color.red)
    // ５日前 .foregroundColor(Color.orange)
    // １０日前 .foregroundColor(Color.blue)
    // ３０日前 .foregroundColor(Color.green)

    @State var value1: CGFloat = 0
    @State var value2: CGFloat = 0
    @State var value3: CGFloat = 0
    @State var value4: CGFloat = 0

    let pieRedTextColor = Color.init(red: 1, green: 0, blue: 0)
    let pieRedBackGroundColorLv1 = Color.init(red: 1.0, green: 0.90, blue: 0.90)
    let pieRedBackGroundColorLv2 = Color.init(red: 1.0, green: 0.70, blue: 0.70)
    let pieRedBackGroundColorLv3 = Color.init(red: 1.0, green: 0.40, blue: 0.40)

    let pieOrangeTextColor = Color.init(red: 0, green: 0.8, blue: 0)
    let pieOrangeBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)
    let pieBlueTextColor = Color.init(red: 0.0, green: 0.0, blue: 1.0)
    let pieBlueBackGroundColor = Color.init(red: 0.9, green: 0.9, blue: 1.0)
    let pieGreenTextColor = Color.init(red: 0, green: 0.8, blue: 0)
    let pieGreenBackGroundColor = Color.init(red: 0.9, green: 1.0, blue: 0.9)

    let grayTextColor = Color.gray
    let grayBackgroundColor = Color.init(red: 0.95, green: 0.95, blue: 0.95)

    var body: some View {

        VStack {

            HStack {
                Spacer()
                ZStack {

                    PieProgressView(value: value1)
                        .frame(width: 65, height: 65)
                        .onAppear {
                            withAnimation(.linear(duration: 1.5)) {
                                self.value1 = 0.4
                            }
                        }

                    HStack {
                        Text("25")
                            .foregroundColor(grayTextColor)
                            .font(.system(size: 20))
                            .offset(x: 8, y: 0)
                        Text("day")
                            .foregroundColor(grayTextColor)
                            .font(.system(size: 10))
                            .offset(x: -2, y: 8)

                    }
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.gray)
                    .background(grayBackgroundColor)
                    .cornerRadius(35)
                }
                Spacer()
            }


            HStack {
                Spacer()
                ZStack {

                    PieProgressView(value: value2)
                        .frame(width: 65, height: 65)
                        .onAppear {
                            withAnimation(.linear(duration: 1.5)) {
                                self.value2 = 0.7
                            }
                        }


                    HStack {
                        Text("3")
                            .foregroundColor(grayTextColor)
                            .offset(x: 7, y: 0)
                            .font(.title2)
                        Text("day")
                            .foregroundColor(grayTextColor)
                            .font(.caption2)
                            .offset(x: 0, y: 5)

                    }
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.gray)
                    .background(pieRedBackGroundColorLv1)
                    .cornerRadius(35)
                }
                Spacer()
            }

            HStack {
                Spacer()
                ZStack {

                    PieProgressView(value: value3)
                        .frame(width: 65, height: 65)
                        .onAppear {
                            withAnimation(.linear(duration: 1.5)) {
                                self.value3 = 0.9
                            }
                        }

                    HStack {
                        Text("1")
                            .foregroundColor(.white)
                            .offset(x: 7, y: 0)
                            .font(.title2)
                        Text("day")
                            .foregroundColor(.white)
                            .font(.caption2)
                            .offset(x: 0, y: 5)

                    }
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.gray)
                    .background(pieRedBackGroundColorLv2)
                    .cornerRadius(35)
                }
                Spacer()
            }

            HStack {
                Spacer()
                ZStack {

                    PieProgressView(value: value4)
                        .frame(width: 65, height: 65)
                        .onAppear {
                            withAnimation(.linear(duration: 1.5)) {
                                self.value4 = 1.0
                            }
                        }

                    HStack {
                        Text("0")
                            .foregroundColor(.white)
                            .offset(x: 7, y: 0)
                            .font(.title2)
                        Text("day")
                            .foregroundColor(.white)
                            .font(.caption2)
                            .offset(x: 0, y: 5)

                    }
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color.gray)
                    .background(pieRedBackGroundColorLv3)
                    .cornerRadius(35)
                }
                Spacer()
            }


        }
    }
}
