.class public Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendTracks"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 992
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a:Landroid/net/Uri;

    return-void
.end method

.method private static a()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sec.android.app.music/audio/recommended_tracks"

    .line 995
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Landroid/net/Uri;
    .locals 1

    .line 999
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1003
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "limit"

    .line 1004
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Landroid/net/Uri;
    .locals 1

    .line 1008
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "notifyChange"

    const-string v0, "disable"

    .line 1009
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
