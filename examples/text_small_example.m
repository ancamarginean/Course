documents = ["Oradea is a very nice city.", "You should really visit it!"]
documents = tokenizedDocument(documents);
documents = addPartOfSpeechDetails(documents);
details = tokenDetails(documents);
details.PartOfSpeech
documents = normalizeWords(documents,'Style','lemma');

% Erase punctuation.
documents = erasePunctuation(documents);

% Remove a list of stop words.
documents = removeStopWords(documents);

bag = bagOfWords(documents)

bag.Counts