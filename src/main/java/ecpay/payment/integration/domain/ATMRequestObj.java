package ecpay.payment.integration.domain;


public class ATMRequestObj {
	
	
	private String MerchantID;
	
	
	private String MerchantTradeNo;
	
	
	private String StoreID;
	
	
	private String RtnCode;
	
	
	private String RtnMsg;
	
	
	private String TradeNo;
	
	
	private String TradeAmt;

	
	private String PaymentType;
	
	
	private String PaymentTypeChargeFee;
	
	
	private String TradeDate;
	
	
	private String SimulatePaid;
	
	
	private String CustomField1;
	
	
	private String CustomField2;
	
	
	private String CustomField3;
	
	
	private String CustomField4;
	
	
	private String CheckMacValue;
	
	
	private String BankCode;
	
	
	private String vAccount;
	
	
	private String ExpireDate;
	
	
	
	
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
	
	public String getBankCode() {
		return BankCode;
	}
	
	public void setBankCode(String bankCode) {
		BankCode = bankCode;
	}
	
	public String getvAccount() {
		return vAccount;
	}
	
	public void setvAccount(String vAccount) {
		this.vAccount = vAccount;
	}
	
	public String getExpireDate() {
		return ExpireDate;
	}
	
	public void setExpireDate(String expireDate) {
		ExpireDate = expireDate;
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
		return "ATMRequestObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", StoreID="
				+ StoreID + ", RtnCode=" + RtnCode + ", RtnMsg=" + RtnMsg + ", TradeNo=" + TradeNo + ", TradeAmt="
				+ TradeAmt + ", PaymentType=" + PaymentType + ", PaymentTypeChargeFee=" + PaymentTypeChargeFee
				+ ", TradeDate=" + TradeDate + ", SimulatePaid=" + SimulatePaid + ", CustomField1=" + CustomField1
				+ ", CustomField2=" + CustomField2 + ", CustomField3=" + CustomField3 + ", CustomField4=" + CustomField4
				+ ", CheckMacValue=" + CheckMacValue + ", BankCode=" + BankCode + ", vAccount=" + vAccount
				+ ", ExpireDate=" + ExpireDate + "]";
	}
}
