package ecpay.payment.integration.domain;


public class QueryTradeInfoObj {
	
	
	private String MerchantID = "";
	
	
	private String MerchantTradeNo = "";
	
	
	private String TimeStamp = "";
	
	
	private String PlatformID = "";
	
	
	
	
	
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
	
	public String getPlatformID() {
		return PlatformID;
	}
	
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	@Override
	public String toString() {
		return "QueryTradeInfoObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", TimeStamp="
				+ TimeStamp + ", PlatformID=" + PlatformID + "]";
	}
}
