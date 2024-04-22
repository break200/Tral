//
//  HomeCardModel.swift
//  Tral
//
//  Created by break200 on 4/22/24.
//

import Foundation

struct HomeCardModel:Codable, Identifiable  {
    let id:String
    let name:String
    let distance:String
    let img:String
    let totalscore:String
    let desc:String
    
    static let sampleCard = HomeCardModel(id: "1", name: "Al-Faisakuag", distance: "1.1 km", img: "popular-0", totalscore: "4.6",desc:"캘리포니아주는 태평양 해안으로 유명합니다. 하지만 3월부터 5월 중순까지 이 다채로운 주에는 만화경 같은 색색깔의 꽃이 피어납니다. 3월부터 4월까지 이어지는 개화 시기에 맞추어 모하비 국립 보호구역(Mojave National Preserve)과 조슈아 트리 국립공원(Joshua Tree National Park)의 사막 풍경에서 꽃길을 따라가는 여정을 시작해보세요. 매혹적인 보랏빛의 사막 루핀, 파셀리아 프레몬티, 인디고 덤불과 모하비 과꽃 등 영년생 식물을 발견해보세요. 은색 잎을 가진 나이트셰이드나 점핑 촐라를 보고 싶다면 캘리포니아주와 애리조나주 경계에 있는 안자 보레고 사막 주립공원(Anza Borrego Desert State Park)의 소노라 사막(Sonoran Desert)으로 가면 됩니다.샌루이스오비스포 안쪽으로 고작 120km 거리에 있는 카리조 플레인 국립기념지(Carrizo Plain National Monument)는 4월부터 활기를 띱니다. 캘리포니아주 금영화, 아울즈 클로버, 보석을 닮은 모습으로 피어나는 특별한 꽃을 만나보세요. 야생화를 따라 로드트립을 즐기고 싶나요? 6월 중순부터 7월 사이에 레이크스 베이슨에서 70번 주간 고속도로를 타고 북쪽으로 향하며 플러머스 국유림(Plumas National Forest)과 페더 리버 캐니언(Feather River Canyon)을 통과하는 것을 추천합니다. 야생 난초와 스노우 플랜트, 부드러운 노랑제비꽃을 사진에 담아보세요.")
    
    
    init(id: String, name: String, distance: String, img: String , totalscore:String , desc:String) {
        self.id = id
        self.name = name
        self.distance = distance
        self.img = img
        self.totalscore = totalscore
        self.desc = desc
    }
}

