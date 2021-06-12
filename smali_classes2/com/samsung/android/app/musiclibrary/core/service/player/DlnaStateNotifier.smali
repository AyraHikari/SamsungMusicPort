.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sPutIBinderExtra:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

.field private final mIsScreenSharingSupported:Z

.field private mPreviousState:I

.field private final mSenderType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    const-string v0, "android.content.Intent"

    const-string v1, "putExtra"

    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 27
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sPutIBinderExtra:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    .line 47
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mSenderType:I

    return-void
.end method

.method private sendDlnaStatus(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;II)Z
    .locals 12

    move-object v0, p3

    move/from16 v10, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDlnaStatus() - dmr info is null, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 82
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v11, 0x1

    if-lt v2, v3, :cond_1

    .line 83
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    move-object v1, p2

    move/from16 v7, p5

    move/from16 v9, p4

    .line 84
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActiveDlnaState(Landroid/hardware/display/DisplayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.screensharing.DLNA_STATUS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 88
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    sget v3, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    if-ne v10, v3, :cond_2

    .line 90
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sPutIBinderExtra:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "binder"

    aput-object v5, v4, v1

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    aput-object v1, v4, v11

    invoke-static {v3, v2, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "device_name"

    .line 92
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ipAddress"

    .line 94
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "player_type"

    move/from16 v3, p5

    .line 96
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "uid"

    .line 97
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "p2pMacAddress"

    .line 98
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "netType"

    .line 100
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uri"

    .line 101
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, p1

    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDlnaStatus() - state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dmrId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dmrName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dmrIPAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dmrP2pAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " iconUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v11
.end method


# virtual methods
.method public send(I)V
    .locals 7

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    if-ne v0, p1, :cond_1

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send() already send this state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mSenderType:I

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sendDlnaStatus(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    :cond_2
    return-void
.end method

.method public setUpData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    return-void
.end method
