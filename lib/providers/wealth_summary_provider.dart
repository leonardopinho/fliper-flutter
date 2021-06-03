import 'package:fliper/config/graphql.dart';
import 'package:fliper/models/wealth_summary.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class WealthSummaryProvider extends ChangeNotifier {
  WealthSummary data;
  var _client;

  WealthSummaryProvider() {
    _client = GraphQL.instance;
  }

  Future<WealthSummary> fetchData() async {
    String query = '''
        query getData {
          wealthSummary(order_by: {id: desc}, limit: 1) {
            id
            gain
            cdi
            profitability
            total
            hasHistory
          }
        }
      ''';

    var queryOptions = QueryOptions(document: gql(query));
    var response = await _client.query(queryOptions);

    if (response != null && response.isConcrete) {
      if (response.data != null) {
        data = WealthSummary.fromJson(response.data['wealthSummary'].first);
        notifyListeners();
      }
    }

  }
}
