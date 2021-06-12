.class public Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$JustForYouPlaylists;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JustForYouPlaylists"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "WFY"

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "DFY"

    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "MP"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
