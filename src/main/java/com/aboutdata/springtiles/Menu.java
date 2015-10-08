package com.aboutdata.springtiles;

public enum Menu {

    DASHBOARD("dashboard"),
    ADMIN("admin:admin"),
    ADMIN_LIST("admin:list"),
    BLANK("blank:parent"),
    BLANK_GRID("blank:grid"),
    BLANK_LIST("blank:list");

    protected static final String CURRENT_MENU_ATTRIBUTE = "current_menus";
    private final String key;

    private Menu(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
