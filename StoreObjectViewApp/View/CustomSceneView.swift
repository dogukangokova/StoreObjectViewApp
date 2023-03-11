//
//  CustomSceneView.swift
//  StoreObjectViewApp
//
//  Created by Devinely on 7.03.2023.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable {
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.allowsCameraControl = false
        view.autoenablesDefaultLighting = true
        view.backgroundColor = .clear
        view.antialiasingMode = .multisampling2X
        view.scene = scene 
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
}

struct CustomSceneView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
