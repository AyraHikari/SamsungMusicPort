.class public Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;J)Z
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return v0

    .line 19
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->q:Z

    return p0

    :cond_1
    return v0
.end method
