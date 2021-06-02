import 'package:fliper/config/graphql.dart';
import 'package:fliper/models/wealth_summary.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class WealthSummaryProvider extends ChangeNotifier {
  var _client;

  WealthSummaryProvider() {
    _client = GraphQL.getClient();
  }

  // String get data => 'asd';

  // Future<WealthSummary> fetchData() async {
  // var response = await http.get(_dataUrl);
  // if (response.statusCode == 200) {
  //   _jsonResonse = response.body;
  // }
  //
  // _isFetching = false;
  // notifyListeners();
  // }

  Future<WealthSummary> fetchData() async {
    var result;

    String query = '''
        query GetSummary {
          wealthSummary {
            id
            profitability
            total
            hasHistory
            gain
            cdi
          }
        }
      ''';

    var queryOptions = QueryOptions(document: gql(query));
    result = await _client.query(queryOptions);

    if (result.isConcrete) {
      if (result.data != null) {
        var r = result.data['wealthSummary'];
        print(r);
      }
    }

    return new WealthSummary();
  }
}
