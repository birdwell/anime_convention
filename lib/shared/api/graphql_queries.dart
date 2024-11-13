class GraphQLQueries {
  static const String queryVoiceActor = '''
  query (\$search: String) {
    Staff(search: \$search) {
      id
      name {
        first
        last
        native
      }
      image {
        large
      }
      languageV2
      characters {
        edges {
          node {
            id
            name {
              full
            }
            image {
              large
            }
          }
          media {
            title {
              romaji
              english
              native
            }
          }
        }
      }
    }
  }
  ''';
}
