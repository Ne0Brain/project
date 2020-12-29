package ecpay.payment.integration.domain;


public class CaptureObj {
	
	
	private String MerchantID = "";
	
	
	private String MerchantTradeNo = "";
	
	
	private String CaptureAMT = "";
	
	
	private String UserRefundAMT = "0";
	
	
	private String PlatformID = "";
	
	
	private String Remark = "";
	
	
	
	
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
	
	public String getCaptureAMT() {
		return CaptureAMT;
	}
	
	public void setCaptureAMT(String captureAMT) {
		CaptureAMT = captureAMT;
	}
	
	public String getUserRefundAMT() {
		return UserRefundAMT;
	}
	
//	public void setUserRefundAMT(String userRefundAMT) {
//		UserRefundAMT = userRefundAMT;
//	}
	
	public String getPlatformID() {
		return PlatformID;
	}
	
	public void setPlatformID(String platformID) {
		PlatformID = platformID;
	}
	
	public String getRemark() {
		return Remark;
	}
	
	public void setRemark(String remark) {
		Remark = remark;
	}
	@Override
	public String toString() {
		return "CaptureObj [MerchantID=" + MerchantID + ", MerchantTradeNo=" + MerchantTradeNo + ", CaptureAMT="
				+ CaptureAMT + ", UserRefundAMT=" + UserRefundAMT + ", PlatformID=" + PlatformID + ", Remark=" + Remark
				+ "]";
	}
}
