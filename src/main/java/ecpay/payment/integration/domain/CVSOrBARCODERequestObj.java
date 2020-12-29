package ecpay.payment.integration.domain;


public class CVSOrBARCODERequestObj {
	
	
	private String MerchantID;
	
	
	private String MerchantTradeNo;
	
	
	private String RtnCode;
	
	
	private String RtnMsg;
	
	
	private String TradeNo;
	
	
	private String TradeAmt;
	
	
	private String PaymentType;
	
	
	private String PaymentTypeChargeFee;
	
	
	private String TradeDate;
	
	
	private String SimulatePaid;
	
	
	private String CheckMacValue;
	
	
	private String PaymentNo;
	
	
	private String ExpireDate;
	
	
	private String Barcode1;
	
	
	private String Barcode2;
	
	
	private String Barcode3;
	
	
	private String StoreID;
	
	
	private String CustomField1;
	
	
	private String CustomField2;
	
	
	private String CustomField3;
	
	
	private String CustomField4;
	
	

	
	public String getMerchantID() {
		return MerchantID;
	}
	
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	
	public String getMerchantTradeNo() {
		return MerchantTradeNo;
	}
	
	public void setMerchantTradeNo(String merchantTradeNo) {
		MerchantTradeNo = merchantTradeNo;
	}
	
	public String getRtnCode() {
		return RtnCode;
	}
	
	public void setRtnCode(String rtnCode) {
		RtnCode = rtnCode;
	}
	
	public String getRtnMsg() {
		return RtnMsg;
	}
	
	public void setRtnMsg(String rtnMsg) {
		RtnMsg = rtnMsg;
	}
	
	public String getTradeNo() {
		return TradeNo;
	}
	
	public void setTradeNo(String tradeNo) {
		TradeNo = tradeNo;
	}
	
	public String getTradeAmt() {
		return TradeAmt;
	}
	
	public void setTradeAmt(String tradeAmt) {
		TradeAmt = tradeAmt;
	}
	
	public String getPaymentType() {
		return PaymentType;
	}
	
	public void setPaymentType(String paymentType) {
		PaymentType = paymentType;
	}
	
	public String getTradeDate() {
		return TradeDate;
	}
	
	public void setTradeDate(String tradeDate) {
		TradeDate = tradeDate;
	}
	
	public String getCheckMacValue() {
		return CheckMacValue;
	}
	
	public void setCheckMacValue(String checkMacValue) {
		CheckMacValue = checkMacValue;
	}
	
	public String getPaymentNo() {
		return PaymentNo;
	}
	
	public void setPaymentNo(String paymentNo) {
		PaymentNo = paymentNo;
	}
	
	public String getExpireDate() {
		return ExpireDate;
	}
	
	public void setExpireDate(String expireDate) {
		ExpireDate = expireDate;
	}
	
	public String getBarcode1() {
		return Barcode1;
	}
	
	public void setBarcode1(String barcode1) {
		Barcode1 = barcode1;
	}
	
	public String getBarcode2() {
		return Barcode2;
	}
	
	public void setBarcode2(String barcode2) {
		Barcode2 = barcode2;
	}
	
	public String getBarcode3() {
		return Barcode3;
	}
	
	public void setBarcode3(String barcode3) {
		Barcode3 = barcode3;
	}
	
	public String getStoreID() {
		return StoreID;
	}
	
	public void setStoreID(String storeID) {
		StoreID = storeID;
	}
	
	public String getCustomField1() {
		return CustomField1;
	}
	
	public void setCustomField1(String customField1) {
		CustomField1 = customField1;
	}
	
	public String getCustomField2() {
		return CustomField2;
	}
	
	public void setCustomField2(String customField2) {
		CustomField2 = customField2;
	}
	
	public String getCustomField3() {
		return CustomField3;
	}
	
	public void setCustomField3(String customField3) {
		CustomField3 = customField3;
	}
	
	public String getCustomField4() {
		return CustomField4;
	}
	
	public void setCustomField4(String customField4) {
		CustomField4 = customField4;
	}
	
	public String getPaymentTypeChargeFee() {
		return PaymentTypeChargeFee;
	}
	
	public void setPaymentTypeChargeFee(String paymentTypeChargeFee) {
		PaymentTypeChargeFee = paymentTypeChargeFee;
	}
	
	public String getSimulatePaid() {
		return SimulatePaid;
	}
	
	public void setSimulatePaid(String simulatePaid) {
		SimulatePaid = simulatePaid;
	}
	@Override
	public String toString() {
		return "CVSOrBARCODERequestObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo
				+ ", RtnCode=" + RtnCode + ", RtnMsg=" + RtnMsg + ", TradeNo=" + TradeNo + ", TradeAmt=" + TradeAmt
				+ ", PaymentType=" + PaymentType + ", PaymentTypeChargeFee=" + PaymentTypeChargeFee + ", TradeDate="
				+ TradeDate + ", SimulatePaid=" + SimulatePaid + ", CheckMacValue=" + CheckMacValue + ", PaymentNo="
				+ PaymentNo + ", ExpireDate=" + ExpireDate + ", Barcode1=" + Barcode1 + ", Barcode2=" + Barcode2
				+ ", Barcode3=" + Barcode3 + ", StoreID=" + StoreID + ", CustomField1=" + CustomField1
				+ ", CustomField2=" + CustomField2 + ", CustomField3=" + CustomField3 + ", CustomField4=" + CustomField4
				+ "]";
	}
}
