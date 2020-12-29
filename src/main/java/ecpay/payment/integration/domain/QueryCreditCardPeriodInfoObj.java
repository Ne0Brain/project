package ecpay.payment.integration.domain;


public class QueryCreditCardPeriodInfoObj {
	
	
	private String MerchantID = "";
	
	
	private String MerchantTradeNo = "";
	
	
	private String TimeStamp = "";
	
	
	
	
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
	
	public String getTimeStamp() {
		return TimeStamp;
	}
	
	public void setTimeStamp(String timeStamp) {
		TimeStamp = timeStamp;
	}
	@Override
	public String toString() {
		return "QueryCreditCardPeriodInfoObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo
				+ ", TimeStamp=" + TimeStamp + "]";
	}
}
