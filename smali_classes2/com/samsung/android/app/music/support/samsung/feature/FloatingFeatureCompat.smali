.class public Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 11
    const p0, 0x0

    return p0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getEnableStatus(Ljava/lang/String;Z)Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 19
    const p0, 0x0

    return p0

    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 1

    .line 52
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 53
    const p0, 0x0

    return p0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 60
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 61
    const p0, 0x0

    return p0

    .line 63
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getInteger(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 27
    const-string p0, "false"

    return-object p0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 45
    const-string p0, "false"

    return-object p0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 36
    const-string p0, "false"

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/feature/FloatingFeatureSdlCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
