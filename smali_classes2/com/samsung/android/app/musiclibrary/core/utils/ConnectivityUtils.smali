.class public final Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROUTE_TYPE_REMOTE_DISPLAY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ConnectivityUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasDataConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static hasSimCard(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 161
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isActiveBluetoothNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x7

    .line 113
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveNetWorkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isActiveEtherNetConnected(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0x9

    .line 109
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveNetWorkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isActiveMobileConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveNetWorkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private static isActiveNetWorkConnected(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "connectivity"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothA2dp;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isChromeCastConnected(Landroid/content/Context;)Z
    .locals 3

    .line 139
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isSmartViewChromeCastSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "media_router"

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter;

    if-nez p0, :cond_1

    const-string p0, "ConnectivityUtils"

    const-string v0, "isChromeCastConnected() router is null."

    .line 144
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x4

    .line 147
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isDLNAConnected(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "display"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 133
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z

    move-result p0

    const-string v0, "ConnectivityUtils"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDLNAConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "connectivity"

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 93
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 95
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 97
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isWfdConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "display"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 126
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->DISPLAY_STATE_CONNECTED:I

    .line 127
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/hardware/display/DisplayManager;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWfdSupported(Landroid/content/Context;)Z
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->isWfdSupported(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "ConnectivityUtils"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdSupported? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveNetWorkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isWiFiP2PEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "wifip2p"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v1, "connectivity"

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 58
    sget v0, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;->TYPE_WIFI_P2P:I

    .line 59
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 61
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "ConnectivityUtils"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsWiFiP2PEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "wifi"

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 71
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ConnectivityUtils"

    const-string v0, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    .line 72
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ConnectivityUtils"

    const-string v0, "isWifiEnabledAndConnected Wifi is Connected"

    .line 78
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "ConnectivityUtils"

    const-string v0, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    .line 81
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
