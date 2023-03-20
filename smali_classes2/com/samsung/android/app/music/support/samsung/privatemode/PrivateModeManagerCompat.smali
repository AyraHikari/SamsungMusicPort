.class public Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;
.super Ljava/lang/Object;
.source "PrivateModeManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string p0, "/storage/Private"

    return-object p0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrivateMode()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->isPrivateMode()Z

    move-result v0

    return v0
.end method
