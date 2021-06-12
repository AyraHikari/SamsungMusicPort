.class final Lcom/samsung/android/castingfindermanager/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .line 46
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    const-string v1, " WIFIDISPLAY_SOURCE"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const-string v1, " WIFIDISPLAY_SINK"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    const-string v1, " GOOGLECAST"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    const-string v1, " DLNA_AVPLAYER"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_4

    const-string v1, " DLNA_IMAGEVIEWER"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5

    const-string v1, " BLUETOOTH_A2DP_SINK"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_6

    const-string v1, " BLUETOOTH_A2DP_RECEIVER"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_7

    const-string p0, " CAST"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 41
    sput-object p0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v0, "SMA_Utils"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 59
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 61
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 3

    .line 66
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 67
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemDlnaDevice;->isSwitchingDevice()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static d()Z
    .locals 6

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x15f90

    if-lt v0, v3, :cond_2

    :try_start_0
    const-string v0, "android.hardware.display.DisplayManager"

    .line 74
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "semGetActiveDevice"

    .line 75
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 76
    sget-object v3, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 77
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    const-string v3, "android.hardware.display.SemDeviceInfo"

    .line 80
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getConnectType"

    .line 81
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SMA_Utils"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGoogleCastConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 89
    :cond_2
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v3, "media_router"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    const/4 v3, 0x4

    .line 90
    invoke-virtual {v0, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 93
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->semGetStatusCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public static e()Z
    .locals 5

    .line 101
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.hardware.display.DisplayManager"

    .line 103
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "semIsWifiDisplaySinkConnected"

    .line 104
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 105
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SMA_Utils"

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiDisplaySinkConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 6

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    :try_start_0
    const-string v2, "android.hardware.display.SemDeviceInfo"

    .line 119
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.hardware.display.DisplayManager"

    .line 120
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "semGetActiveDevice"

    .line 121
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 122
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "getConnectType"

    .line 124
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public static g()Z
    .locals 6

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    :try_start_0
    const-string v2, "android.hardware.display.SemDeviceInfo"

    .line 143
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.hardware.display.DisplayManager"

    .line 144
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "semGetActiveDevice"

    .line 145
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 146
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "getConnectType"

    .line 148
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 149
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public static h()Z
    .locals 7

    .line 162
    :try_start_0
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.samsung.android.oneconnect.db.clouddb/cast/session"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sessionId"

    .line 165
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMA_Utils"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session ID in clouddb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static i()Z
    .locals 2

    .line 181
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->d()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->e()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static j()Z
    .locals 2

    .line 206
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    .line 207
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static k()Z
    .locals 2

    .line 211
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 212
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->semIsWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 2

    .line 232
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 233
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semCheckScreenSharingSupported()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m()Z
    .locals 6

    .line 237
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 243
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/hdmi/state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0xf

    .line 244
    :try_start_1
    new-array v0, v0, [C

    .line 245
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 247
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-direct {v5, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 254
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    :try_start_3
    const-string v1, "SMA_Utils"

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_0

    :catch_2
    :cond_1
    :goto_2
    return v2

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v3, :cond_2

    .line 254
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 256
    :catch_3
    :cond_2
    throw v0

    .line 261
    :cond_3
    sget-object v0, Lcom/samsung/android/castingfindermanager/Utils;->a:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v3, "android.hardware.display.category.PRESENTATION"

    .line 262
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const/4 v3, 0x0

    .line 263
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 264
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HDMI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "SMA_Utils"

    const-string v2, "HDMI Cable connected"

    .line 265
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return v2
.end method
