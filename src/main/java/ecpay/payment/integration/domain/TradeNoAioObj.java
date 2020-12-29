package ecpay.payment.integration.domain;


public class TradeNoAioObj {
	
	
	private String MerchantID = "";
	
	
	private String DateType = "";
	
	
	private String BeginDate = "";
	
	
	private String EndDate = "";
	
	
	private String PaymentType = "";
	
	
	private String PlatformStatus = "";
	
	
	private String PaymentStatus = "";
	
	
	private String AllocateStatus = "";
	
	
	private String MediaFormated = "";
	
	
	
	
	public String getMerchantID() {
		return MerchantID;
	}
	
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	
	public String getDateType() {
		return DateType;
	}
	
	public void setDateType(String dateType) {
		DateType = dateType;
	}
	
	public String getBeginDate() {
		return BeginDate;
	}
	
	public void setBeginDate(String beginDate) {
		BeginDate = beginDate;
	}
	
	public String getEndDate() {
		return EndDate;
	}
	
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	
	public String getPaymentType() {
		return PaymentType;
	}
	
	public void setPaymentType(String paymentType) {
		PaymentType = paymentType;
	}
	
	public String getPlatformStatus() {
		return PlatformStatus;
	}
	
	public void setPlatformStatus(String platformStatus) {
		PlatformStatus = platformStatus;
	}
	
	public String getPaymentStatus() {
		return PaymentStatus;
	}
	
	public void setPaymentStatus(String paymentStatus) {
		PaymentStatus = paymentStatus;
	}
	
	public String getAllocateStatus() {
		return AllocateStatus;
	}
	
	public void setAllocateStatus(String allocateStatus) {
		AllocateStatus = allocateStatus;
	}
	
	public String getMediaFormated() {
		return MediaFormated;
	}
	
	public void setMediaFormated(String mediaFormated) {
		MediaFormated = mediaFormated;
	}
	@Override
	public String toString() {
		return "TradeNoAioObj [MerchantID=" + MerchantID + ", DateType=" + DateType + ", BeginDate=" + BeginDate
				+ ", EndDate=" + EndDate + ", PaymentType=" + PaymentType + ", PlatformStatus=" + PlatformStatus
				+ ", PaymentStatus=" + PaymentStatus + ", AllocateStatus=" + AllocateStatus + ", MediaFormated="
				+ MediaFormated + "]";
	}
}
