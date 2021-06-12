.class public final Lcom/samsung/android/app/music/provider/MusicContents;
.super Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicContents$AlbumArtLocationExtra;
    }
.end annotation


# direct methods
.method public static a(I)Landroid/net/Uri;
    .locals 3

    const v0, 0x10000b

    if-eq p0, v0, :cond_1

    const v0, 0x10000f

    if-eq p0, v0, :cond_0

    .line 64
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContentsExtra;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 61
    :cond_1
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const-string v0, "MusicContents"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMatchedUri() Uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0xe

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide/16 v2, -0xc

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide/16 v2, -0xd

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "audio_id"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "_id"

    return-object p0
.end method
