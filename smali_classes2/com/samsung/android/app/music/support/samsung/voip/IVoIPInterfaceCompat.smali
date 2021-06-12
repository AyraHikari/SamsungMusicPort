.class public Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IVoIPInterfaceCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVoIPIdle()Z
    .locals 3

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 17
    :try_start_0
    new-instance v1, Lcom/samsung/android/voip/SemVoipInterfaceManager;

    invoke-direct {v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager;-><init>()V

    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->isVoipIdle()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 20
    :catch_0
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v2, "Runtime exception happened, something was wrong in voip module."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    .line 24
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->isVoipIdle()Z

    move-result v0

    return v0
.end method
