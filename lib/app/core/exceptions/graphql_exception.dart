import 'package:graphql/client.dart';

class GraphQLException implements Exception {
  List<GraphQLError> graphqlErrors = [];

  LinkException linkException;
}
