import 'package:haydi_ekspres_dev_tools/models/address_model.dart';
import 'package:haydi_ekspres_dev_tools/models/bucket_element_model.dart';
import 'package:haydi_ekspres_dev_tools/models/payment_model.dart';

class OrderModel {
  PaymentModel paymentData;
  List<BucketElementModel> menuData;
  AddressModel addressData;
  String paymentMethod;
  String orderState;
  String orderCreationDate;
  String customerName;
  String customerId;
  String? deliveryDate;
  double? distance;
  String restaurantId;
  String restaurantName;
  String customerPhoneNumber;
  String? note;
  bool isDeliveringWithCourierService;
  bool? isCancelledFromCourier;
  bool? isPaidSuccess;
  String? courierId;
  String orderId;

  OrderModel({
    required this.paymentData,
    required this.menuData,
    required this.addressData,
    required this.paymentMethod,
    required this.isPaidSuccess,
    required this.orderState,
    required this.orderCreationDate,
    required this.customerName,
    this.deliveryDate,
    required this.isDeliveringWithCourierService,
    this.distance,
    required this.customerId,
    required this.restaurantId,
    required this.restaurantName,
    this.isCancelledFromCourier,
    required this.customerPhoneNumber,
    required this.note,
    this.courierId,
    required this.orderId,
  });

  Map<String, dynamic> toJson() {
    return {
      'paymentData': paymentData.toJson(),
      'menuData': menuData.map((e) => e.toJson()).toList(),
      'addressData': addressData.toJson(),
      'paymentMethod': paymentMethod,
      'orderState': orderState,
      'deliveryDate': deliveryDate,
      'distance': distance,
      'isDeliveringWithCourierService': isDeliveringWithCourierService,
      'orderCreationDate': orderCreationDate,
      'customerName': customerName,
      'customerId': customerId,
      'restaurantId': restaurantId,
      'restaurantName': restaurantName,
      'isCancelledFromCourier': isCancelledFromCourier,
      'customerPhoneNumber': customerPhoneNumber,
      'note': note,
      'isPaidSuccess': isPaidSuccess,
      'courierId': courierId,
      'orderId': orderId
    };
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      paymentData: PaymentModel.fromJson(json['paymentData']),
      menuData: (json['menuData'] as List<dynamic>)
          .map((e) => BucketElementModel.fromJson(e))
          .toList(),
      addressData: AddressModel.fromJson(json['addressData']),
      paymentMethod: json['paymentMethod'] as String,
      orderState: json['orderState'] as String,
      orderCreationDate: json['orderCreationDate'] as String,
      customerName: json['customerName'] as String,
      customerId: json['customerId'] as String,
      deliveryDate: json['deliveryDate'] as String?,
      isDeliveringWithCourierService:
          json['isDeliveringWithCourierService'] as bool,
      distance: json['distance'] as double?,
      restaurantId: json['restaurantId'] as String,
      restaurantName: json['restaurantName'] as String,
      isCancelledFromCourier: json['isCancelledFromCourier'] as bool?,
      customerPhoneNumber: json['customerPhoneNumber'] as String,
      note: json['note'] as String?,
      isPaidSuccess: json['isPaidSuccess'] as bool?,
      courierId: json['courierId'] as String?,
      orderId: json['orderId'] as String,
    );
  }

  @override
  String toString() =>
      "OrderModel(paymentData: $paymentData,menuData: $menuData,addressData: $addressData,paymentMethod: $paymentMethod,orderState: $orderState,orderCreationDate: $orderCreationDate,customerName: $customerName,customerPhoneNumber: $customerPhoneNumber,note: $note)";

  @override
  int get hashCode => Object.hash(
        paymentData,
        menuData,
        addressData,
        paymentMethod,
        orderState,
        orderCreationDate,
        customerName,
        customerPhoneNumber,
        note,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModel &&
          runtimeType == other.runtimeType &&
          paymentData == other.paymentData &&
          menuData == other.menuData &&
          addressData == other.addressData &&
          paymentMethod == other.paymentMethod &&
          orderState == other.orderState &&
          orderCreationDate == other.orderCreationDate &&
          customerName == other.customerName &&
          customerPhoneNumber == other.customerPhoneNumber &&
          note == other.note;
}
