//
//  AllNotesList.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 16/11/22.
//

import SwiftUI

struct AllNotesListView: View {
    
    var notes = NoteList.notes
    
    var body: some View {
        NavigationView {
            List {
                ForEach(notes, id: \.id) { note in
                    NavigationLink(destination: AllNoteDetailView(note: note)) {
                        HStack(spacing: 25) {
                            Image("EmptyDrop")
                            Text(note.noteTitle)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .navigationTitle("All Notes")
                }
            }
        }
    }
}

struct AllNotesList_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesListView()
    }
}
