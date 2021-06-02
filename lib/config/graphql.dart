import 'package:fliper/config/constants.dart';
import 'package:graphql/client.dart';

class GraphQL {
  static GraphQLClient get instance => _getClient();

  static GraphQLClient _getClient() {
    var httpLink = HttpLink(Constants.endPoint, defaultHeaders: {
      "x-hasura-admin-secret": Constants.secret,
    });

    var authLink = AuthLink(
      getToken: () async => '$Constants.secret',
    );

    var link = authLink.concat(httpLink);

    var graphQLClient = GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );

    return graphQLClient;
  }
}
