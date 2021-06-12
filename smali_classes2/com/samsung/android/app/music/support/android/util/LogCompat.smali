.class public Lcom/samsung/android/app/music/support/android/util/LogCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 57
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 60
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 65
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 68
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 73
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 76
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 52
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 81
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0, p1, p2}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 84
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/util/LogSdlCompat;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
