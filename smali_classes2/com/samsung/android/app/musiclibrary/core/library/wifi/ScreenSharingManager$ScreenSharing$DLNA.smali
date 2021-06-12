.class public Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing$DLNA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager$ScreenSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DLNA"
.end annotation


# static fields
.field public static final ACTION_CONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

.field public static final ACTION_DISCONNECTION_REQUEST:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

.field public static final ACTION_STATUS:Ljava/lang/String; = "com.sec.android.screensharing.DLNA_STATUS"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final EXTRA_ICON_URI:Ljava/lang/String; = "uri"

.field public static final EXTRA_ID:Ljava/lang/String; = "uid"

.field public static final EXTRA_IP_ADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final EXTRA_NET_TYPE:Ljava/lang/String; = "netType"

.field public static final EXTRA_P2P_MAC_ADDRESS:Ljava/lang/String; = "p2pMacAddress"

.field public static final EXTRA_PLAYER_TYPE:Ljava/lang/String; = "player_type"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
