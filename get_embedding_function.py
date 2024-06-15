from langchain_community.embeddings.ollama import OllamaEmbeddings


def get_embedding_function():
   
    embeddings = OllamaEmbeddings(model="jina/jina-embeddings-v2-base-en")
    return embeddings