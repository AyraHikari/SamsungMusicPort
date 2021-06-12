.class public Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;
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
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;)Z

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
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 1

    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 43
    const p0, 0x0

    return p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 51
    const p0, 0x0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getInteger(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 27
    const-string p0, "0"

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 35
    const-string p0, "0"

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/CscFeatureSdlCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
