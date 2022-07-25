//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Vijay Parmar on 01/07/22.
//

import Foundation

extension Bundle{
    
    func decode<T:Codable>(_ file:String)->T{
        
        //1.Locate the Json File
        guard let url = self.url(forResource: file, withExtension: nil)else{
            fatalError("Failed to locate \(file) in bundle")
            
        }
        //2.Create property for the idea
        guard let data = try? Data(contentsOf: url)else{
             fatalError("Failed to load \(file) in local.")
        }
        
        //3.Create a decoder
        let decoder = JSONDecoder()
        
        //4.Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data)else{
            fatalError("failed to decode \(file) from bundle")
        }
        
        //5.Return the ready-tot-use-data
        return decodedData
        
    }
    
    
}
