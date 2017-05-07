package com.acpms.ssm.pojo;

public class AcpMenu {
	private String id;
	private String parentId;
	private String menuName;
	private String menuUrl;
	private String rank;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	
	public AcpMenu(String id, String parentId, String menuName, String menuUrl,
			String rank) {
		super();
		this.id = id;
		this.parentId = parentId;
		this.menuName = menuName;
		this.menuUrl = menuUrl;
		this.rank = rank;
	}
	
	public AcpMenu(){ }
	
	@Override
	public String toString() {
		return "AcpMenu [id=" + id + ", parentId=" + parentId + ", menuName="
				+ menuName + ", menuUrl=" + menuUrl + ", rank=" + rank + "]";
	}
}
