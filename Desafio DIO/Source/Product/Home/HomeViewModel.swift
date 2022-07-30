//
//  HomeViewModel.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import Foundation

let jsonString = """
{
    "Status": 200,
    "Object": [
        {
            "Player": {
                "img": "http://sportsmatch.com.br/teste/img.jpg",
                "name": "Usuário de Teste",
                "percentual": 59.193163771924,

                "pos": "Atacante",
                "country": "Alemanha",
                "Barras": {
                    "Copas_do_Mundo_Vencidas": {
                        "max": 3.0,
                        "pla": 1.0,
                        "pos": 18
                    },
                    "Copas_do_Mundo_Disputadas": {
                        "max": 5.0,
                        "pla": 4.0,
                        "pos": 2
                    }
                }
            }
        }
    ]
}
"""

let jsonData = Data(jsonString.utf8)

class HomeViewModel {
    
    private var player: PlayerModel?
    
    init() {
        let decoder = JSONDecoder()
        
        do {
            let baseJson = try decoder.decode(BaseJson<[PlayersModel]>.self, from: jsonData)
            self.player = baseJson.object.first?.data
        } catch {
            print(error.localizedDescription)
        }
    }
    
    public func getUserImageURL() -> String {
        return self.player?.img ?? ""
    }
    
    public func getUserName() -> String {
        return self.player?.name ?? ""
    }
    
    public func getPercentual() -> String {
        return String(format: "%.3f", self.player?.percentual ?? "")
    }
    
    public func getPosition() -> String {
        return self.player?.position ?? ""
    }
    
    public func getCountry() -> String {
        return self.player?.country ?? ""
    }
    
    public func getWordCupWinProgressValue() -> Float {
        let wordCupWinPla = self.getWordCupWinPla()
        let wordCupWinMax = self.player?.bars.wordCupWin.max ?? 1
        let progressValue = ((wordCupWinPla * 100) / wordCupWinMax)/100
        return progressValue
    }
    
    public func getWordCupWinPla() -> Float {
        return self.player?.bars.wordCupWin.pla ?? 0
    }
    
    public func getWordCupWinPos() -> Int {
        return self.player?.bars.wordCupWin.pos ?? 0
    }
    
    public func getWordCupDisputeProgressValue() -> Float {
        let wordCupDisputePla = self.getWordCupDisputePla()
        let wordCupDisputeMax = self.player?.bars.wordCupDispute.max ?? 1
        let progressValue =  ((wordCupDisputePla * 100) / wordCupDisputeMax)/100
        return progressValue
    }
    
    public func getWordCupDisputePla() -> Float {
        return self.player?.bars.wordCupDispute.pla ?? 0
    }
    
    public func getWordCupDisputePos() -> Int {
        return self.player?.bars.wordCupDispute.pos ?? 0
    }
}
