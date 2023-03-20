.class public Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;
.super Ljava/lang/Object;
.source "IVoIPInterfaceCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IVoIPInterfaceCompat"


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

.method public static isVoIPIdle()Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.samsung.android.voip.SemVoipInterfaceManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "isVoipIdle"

    new-array v5, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v2, "Runtime exception happened, something was wrong in voip module."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/os/IVoIPInterfaceSdlCompat;->isVoipIdle()Z

    move-result v0

    return v0
.end method
