package com.xiaoshu.admin.entity.JsonData;

public class Net {
    private String NetID;
    private String IDnode;
    private String Netaddr;

    public void setNetID(String netID) {
        NetID = netID;
    }

    public void setIDnode(String IDnode) {
        this.IDnode = IDnode;
    }

    public void setNetaddr(String netaddr) {
        Netaddr = netaddr;
    }

    public String getNetID() {
        return NetID;
    }

    public String getIDnode() {
        return IDnode;
    }

    public String getNetaddr() {
        return Netaddr;
    }

    @Override
    public String toString() {
        return "Net{" +
                "NetID='" + NetID + '\'' +
                ", IDnode='" + IDnode + '\'' +
                ", Netaddr='" + Netaddr + '\'' +
                '}';
    }
}
