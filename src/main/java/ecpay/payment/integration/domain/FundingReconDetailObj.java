package ecpay.payment.integration.domain;


public class FundingReconDetailObj {
	
	
	private String MerchantID = "";
	
	
	private String PayDateType = "";
	
	
	private String StartDate = "";
	
	
	private String EndDate = "";
	
	
	
	
	public String getMerchantID() {
		return MerchantID;
	}
	
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	
	public String getPayDateType() {
		return PayDateType;
	}
	
	public void setPayDateType(String payDateType) {
		PayDateType = payDateType;
	}
	
	public String getStartDate() {
		return StartDate;
	}
	
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	
	public String getEndDate() {
		return EndDate;
	}
	
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	@Override
	public String toString() {
		return "FundingReconDetailObj [MerchantID=" + MerchantID + ", PayDateType=" + PayDateType + ", StartDate="
				+ StartDate + ", EndDate=" + EndDate + "]";
	}
}
