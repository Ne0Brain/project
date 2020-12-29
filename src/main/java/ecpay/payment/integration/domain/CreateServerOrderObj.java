package ecpay.payment.integration.domain;


public class CreateServerOrderObj {
	
	
	private String MerchantID = "";
	
	
	private String MerchantTradeNo = "";
	
	
	private String MerchantTradeDate = "";
	
	
	private String TotalAmount = "";
	
	
	private String CurrencyCode = "";
	
	
	private String ItemName = "";
	
	
	private String PlatformID = "";
	
	
	private String TradeDesc = "";
	
	
	private String TradeType = "";
	
	
	private String PaymentToken = "";
	
	

	
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

	
	public String getMerchantTradeDate() {
		return MerchantTradeDate;
	}

	
	public void setMerchantTradeDate(String merchantTradeDate) {
		MerchantTradeDate = merchantTradeDate;
	}

	
	public String getTotalAmount() {
		return TotalAmount;
	}

	
	public void setTotalAmount(String totalAmount) {
		TotalAmount = totalAmount;
	}

	
	public String getCurrencyCode() {
		return CurrencyCode;
	}

	
	public void setCurrencyCode(String currencyCode) {
		CurrencyCode = currencyCode;
	}

	
	public String getItemName() {
		return ItemName;
	}

	
	public void setItemName(String itemName) {
		ItemName = itemName;
	}

	
	public String getPlatformID() {
		return PlatformID;
	}

	
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}

	
	public String getTradeDesc() {
		return TradeDesc;
	}

	
	public void setTradeDesc(String tradeDesc) {
		TradeDesc = tradeDesc;
	}

	
	public String getTradeType() {
		return TradeType;
	}

	
	public void setTradeType(String tradeType) {
		TradeType = tradeType;
	}

	
	public String getPaymentToken() {
		return PaymentToken;
	}

	
	public void setPaymentToken(String paymentToken) {
		PaymentToken = paymentToken;
	}

	@Override
	public String toString() {
		return "CreateServerOrderObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo
				+ ", MerchantTradeDate=" + MerchantTradeDate + ", TotalAmount=" + TotalAmount + ", CurrencyCode="
				+ CurrencyCode + ", ItemName=" + ItemName + ", PlatformID=" + PlatformID + ", TradeDesc=" + TradeDesc
				+ ", TradeType=" + TradeType + ", PaymentToken=" + PaymentToken + "]";
	}
}
