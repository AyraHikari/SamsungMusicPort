.class public Lcom/samsung/android/app/music/advertise/AdvertiseUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .locals 3

    const-string v0, "AdvertiseUtils"

    const-string v1, "getStatusBarHeight"

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "AdvertiseUtils"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatusBarHeight - height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "AdvertiseUtils"

    const-string v1, "isPortrait"

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "AdvertiseUtils"

    const-string v1, "isPortrait - true"

    .line 37
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string p0, "AdvertiseUtils"

    const-string v0, "isPortrait - false"

    .line 40
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "AdvertiseUtils"

    const-string v1, "isPhone"

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AdvertiseUtils"

    const-string v0, "isPhone - true"

    .line 47
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "AdvertiseUtils"

    const-string v0, "isPhone - false"

    .line 50
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
