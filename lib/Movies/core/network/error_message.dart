class ErrorMeassageModel {
  final int statusCode;
  final String statusMessage;
  final bool success;
 const  ErrorMeassageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });
 factory ErrorMeassageModel.fromjeson(jeson)
 {
   return ErrorMeassageModel(statusCode: jeson['status_code'],
       statusMessage: jeson['status_message'],
       success:jeson['success']
   );
 }
}