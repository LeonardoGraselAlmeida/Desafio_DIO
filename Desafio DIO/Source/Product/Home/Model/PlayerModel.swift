//
//  PlayerModel.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import Foundation

struct PlayersModel:Codable {
    let data: PlayerModel
    
    enum CodingKeys: String, CodingKey {
        case data = "Player"
    }
}

struct PlayerModel: Codable {
    let img: String
    let name: String
    let percentual: Double
    let position: String
    let country: String
    let bars: BarsModel
    
    enum CodingKeys: String, CodingKey {
        case img
        case name
        case percentual
        case position = "pos"
        case country
        case bars = "Barras"
    }
}

struct BarsModel: Codable {
	let wordCupWin: WorldCupScoreboardModel
    let wordCupDispute: WorldCupScoreboardModel
    
    enum CodingKeys: String, CodingKey {
        case wordCupWin = "Copas_do_Mundo_Vencidas"
        case wordCupDispute = "Copas_do_Mundo_Disputadas"
    }
}

struct WorldCupScoreboardModel: Codable {
    let max: Float
    let pla: Float
    let pos: Int
}
