//
//  AllNoteData.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 16/11/22.
//

import Foundation

struct NoteModel: Identifiable {
    let id = UUID()
    let noteTitle: String
    let noteDescription: String
}

struct NoteList {
    static let notes = [NoteModel(noteTitle: "Study", noteDescription: "Maths, Physics, Chemistry"),
    NoteModel(noteTitle: "Goals", noteDescription: "SwiftUI, Combine"),
    NoteModel(noteTitle: "Destinations", noteDescription: "Maldives, France" )]
}
