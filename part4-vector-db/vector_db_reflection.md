## Vector DB Use Case

Traditional search (SQL LIKE, full-text search) works on exact words, not meaning.

Problems in legal contracts: Synonyms & legal phrasing
Query: “termination clauses”
Document may say: “agreement may be dissolved under the following conditions”
Keyword search misses this

Context matters: “Termination” could mean: contract end; employee termination
Keyword search can’t disambiguate well

Long documents (500 pages)
Relevant info buried in paragraphs
Keyword search returns too many irrelevant hits
Natural language queries
Lawyers ask questions, not keywords
Keyword systems don’t understand intent

Approach (Semantic Search + LLM)

System should understand:
Meaning of the question
Meaning of the document content
This is done using: Embeddings (vector representations)

Vector similarity search: Role of a Vector Database
A vector DB (like Pinecone or Weaviate) enables:

Step-by-step role
Step 1: Document Processing
Break 500-page contract into chunks (paragraphs/sections)
Convert each chunk → embedding vector

Step 2: Store in Vector DB
Store:Vector
Text chunk
Metadata (clause type, section, page)

Step 3: Query Understanding
User asks: “What are the termination clauses?”
Convert query into embedding

Step 4: Semantic Search
Vector DB finds most similar chunks (by meaning, not keywords)
Even if wording is different, it still matches

Step 5: LLM (Final Answer)
Pass retrieved chunks to LLM
Generate concise answer with context
