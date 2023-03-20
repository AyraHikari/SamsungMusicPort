.class public Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;
.super Ljava/lang/Object;
.source "IVoIPInterfaceSdlCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IVoIPInterfaceSdlCompat"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVoipIdle()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "voip"

    .line 1
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->TAG:Ljava/lang/String;

    const-string v2, "remote exception happened, something was wrong in voip module."

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method
