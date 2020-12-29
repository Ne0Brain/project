package ecpay.payment.integration.domain;


public class QueryTradeObj {
	
	
	private String MerchantID = "";
	
	
	private String CreditRefundId = "";
	
	
	private String CreditAmount = "";
	
	
	private String CreditCheckCode = "";
	
	
	
	
	public String getMerchantID() {
		return MerchantID;
	}
	
	public void setMerchantID(String merchantID) {
		MerchantID = merchantID;
	}
	
	public String getCreditRefundId() {
		return CreditRefundId;
	}
	
	public void setCreditRefundId(String creditRefundId) {
		CreditRefundId = creditRefundId;
	}
	
	public String getCreditAmount() {
		return CreditAmount;
	}
	
	public void setCreditAmount(String creditAmount) {
		CreditAmount = creditAmount;
	}
	
	public String getCreditCheckCode() {
		return CreditCheckCode;
	}
	
	public void setCreditCheckCode(String creditCheckCode) {
		CreditCheckCode = creditCheckCode;
	}
	@Override
	public String toString() {
		return "QureyTradeObj [MerchantID=" + MerchantID + ", CreditRefundId=" + CreditRefundId + ", CreditAmount="
				+ CreditAmount + ", CreditCheckCode=" + CreditCheckCode + "]";
	}
}
