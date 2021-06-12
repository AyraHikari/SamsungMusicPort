.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 26
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manifest(\\(.+\\))?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Manifest"

    .line 29
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
