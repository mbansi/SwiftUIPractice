//
//  AllNoteRow.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 16/11/22.
//

import SwiftUI

struct AllNoteDetailView: View {
    
    var note: NoteModel
    @State var answer = false
    
    var body: some View {
        VStack {
            Text(note.noteTitle)
                .multilineTextAlignment(.leading)
                .font(.title3)
            Text(note.noteDescription)
                .font(.body)
            Spacer()
                .frame(width: 30)
                .background(Color.blue)
            NavigationLink(destination: SplashView(), isActive: $answer, label: {
                Button(action: {
                    answer = true
                }, label: {
                    Text("Sign Up View")
                })
            })
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AllNoteRow_Previews: PreviewProvider {
    static var previews: some View {
        AllNoteDetailView(note: NoteList.notes.first!)
    }
}
