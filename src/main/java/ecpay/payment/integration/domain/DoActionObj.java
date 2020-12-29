package ecpay.payment.integration.domain;


public class DoActionObj {
	
	
	private String MerchantID = "";
	
	
	private String MerchantTradeNo = "";
	
	
	private String TradeNo = "";
	
	
	private String Action = "";
	
	
	private String TotalAmount = "";
	
	
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
	
	public String getTradeNo() {
		return TradeNo;
	}
	
	public void setTradeNo(String tradeNo) {
		TradeNo = tradeNo;
	}
	
	public String getAction() {
		return Action;
	}
	
	public void setAction(String action) {
		Action = action;
	}
	
	public String getTotalAmount() {
		return TotalAmount;
	}
	
	public void setTotalAmount(String totalAmount) {
		TotalAmount = totalAmount;
	}
	
	public String getPlatformID() {
		return PlatformID;
	}
	
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	@Override
	public String toString() {
		return "DoActionObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", TradeNo=" + TradeNo
				+ ", Action=" + Action + ", TotalAmount=" + TotalAmount + ", PlatformID=" + PlatformID + "]";
	}
}
