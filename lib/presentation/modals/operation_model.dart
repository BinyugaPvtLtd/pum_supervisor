class OperationModel{
  final bool confirm ;
   bool check;
  final String edit;
  final String cancle;
  final String Message;
  final String Status;
  final String OrderNo;
  final String Operation;
  final String MaterialNo;
  final String Description;
  final String OrderQty;
  final String PendingQty;
  final String Rejection;
  final String Rework;
  final String ConfirmedQty;
  final String BalancedQty;
  OperationModel({required this.confirm,
  required this.check,
  required this.edit,
  required this.cancle,
  required this.Message,
  required this.Status,
  required this.OrderNo,
  required this.Operation,
  required this.MaterialNo, required this.Description, required this.OrderQty, required this.PendingQty, required this.Rejection, required this.Rework, required this.ConfirmedQty, required this.BalancedQty,});
}