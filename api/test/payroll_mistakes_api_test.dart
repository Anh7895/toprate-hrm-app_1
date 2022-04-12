import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PayrollMistakesApi
void main() {
  final instance = Openapi().getPayrollMistakesApi();

  group(PayrollMistakesApi, () {
    // Get all Payroll Mistakes
    //
    // Get all Payroll Mistakes
    //
    //Future<JsonObject> getAllPayrollMistakes({ String limit, String page, String orderBy, String fullNamePayrollMistake, int companyId, String userCodeTilde, String month, String status }) async
    test('test getAllPayrollMistakes', () async {
      // TODO
    });

    // Update put payroll mistakes
    //
    // Update put payroll mistakes
    //
    //Future<PayrollMistake> putUpdateStatusPayrollMistakes(int id, PayrollMistake payrollMistake) async
    test('test putUpdateStatusPayrollMistakes', () async {
      // TODO
    });

  });
}
