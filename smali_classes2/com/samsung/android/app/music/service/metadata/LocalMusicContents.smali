.class public final Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object v0
.end method


# virtual methods
.method public convertToUriType(I)I
    .locals 1

    const v0, 0x10000b

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method public getMatchedArtworkUri(I)Landroid/net/Uri;
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getMatchedUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 44
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    return-object p1

    .line 46
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    return-object p1
.end method

.method public insertMediaIdsToMusicProvider(Landroid/content/Context;[J)Z
    .locals 0

    .line 26
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;[J)Z

    move-result p1

    return p1
.end method
