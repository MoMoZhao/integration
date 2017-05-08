package com.acpms.ssm.pojo;

public class CustInfo {
	private String pkId;
	private String name;
	private String organizationCode;
	private String legalPerson;
	private String foundDate;
	private String registerCapital;
	private String formatCapital;
	private String propCode;
	private String busLicence;
	private String finLicence;
	private String regNumber;
	private String address;
	private String shareHolder;
	private String comProfile;
	
	public String getPkId() {
		return pkId;
	}
	public void setPkId(String pkId) {
		this.pkId = pkId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrganizationCode() {
		return organizationCode;
	}
	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode;
	}
	public String getLegalPerson() {
		return legalPerson;
	}
	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}
	public String getFoundDate() {
		return foundDate;
	}
	public void setFoundDate(String foundDate) {
		this.foundDate = foundDate;
	}
	public String getRegisterCapital() {
		return registerCapital;
	}
	public void setRegisterCapital(String registerCapital) {
		this.registerCapital = registerCapital;
	}
	public String getFormatCapital() {
		return formatCapital;
	}
	public void setFormatCapital(String formatCapital) {
		this.formatCapital = formatCapital;
	}
	public String getPropCode() {
		return propCode;
	}
	public void setPropCode(String propCode) {
		this.propCode = propCode;
	}
	public String getBusLicence() {
		return busLicence;
	}
	public void setBusLicence(String busLicence) {
		this.busLicence = busLicence;
	}
	public String getFinLicence() {
		return finLicence;
	}
	public void setFinLicence(String finLicence) {
		this.finLicence = finLicence;
	}
	public String getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(String regNumber) {
		this.regNumber = regNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getShareHolder() {
		return shareHolder;
	}
	public void setShareHolder(String shareHolder) {
		this.shareHolder = shareHolder;
	}
	public String getComProfile() {
		return comProfile;
	}
	public void setComProfile(String comProfile) {
		this.comProfile = comProfile;
	}
	public CustInfo(String name, String organizationCode, String legalPerson,
			String foundDate, String registerCapital, String formatCapital,
			String propCode, String busLicence, String finLicence,
			String regNumber, String address, String shareHolder,
			String comProfile) {
		super();
		this.name = name;
		this.organizationCode = organizationCode;
		this.legalPerson = legalPerson;
		this.foundDate = foundDate;
		this.registerCapital = registerCapital;
		this.formatCapital = formatCapital;
		this.propCode = propCode;
		this.busLicence = busLicence;
		this.finLicence = finLicence;
		this.regNumber = regNumber;
		this.address = address;
		this.shareHolder = shareHolder;
		this.comProfile = comProfile;
	}
	
	public CustInfo(){ }
	
}
