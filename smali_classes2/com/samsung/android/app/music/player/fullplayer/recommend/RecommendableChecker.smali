.class public final Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    .line 163
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->c:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    return-object p0
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;I)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;I)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;I)Z
    .locals 4

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p2, 0x8

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-lez v1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/FilePathUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-lez v1, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    and-int/2addr p2, v2

    if-lez p2, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/FilePathUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a:Landroid/content/Context;

    const v2, 0x7f0b0429

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "<unknown>"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 141
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "This track is available to get recommend :  "

    goto :goto_0

    :cond_0
    const-string p0, "This track is NOT available to get recommend : "

    :goto_0
    const-string v0, "RecommendableChecker"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1

    const-string v0, "Samsung"

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Network is not connected"

    .line 48
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "My music mode"

    .line 53
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_a

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isCeleb()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    const-wide/32 v4, 0x10001

    const/4 v0, 0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    const-string v1, "streaming file"

    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayingUri()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/FilePathUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FLAC"

    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "WAV"

    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "MP3"

    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not recommendable local file ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    :cond_5
    const/4 v5, 0x7

    .line 82
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v0, "empty title, album or artist"

    .line 83
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    .line 87
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "Samsung music contents"

    .line 88
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    .line 92
    :cond_7
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/FilePathUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "wav file"

    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    :cond_8
    long-to-int v0, v2

    .line 98
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    const v3, 0x7f100087

    .line 100
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->c:Landroid/os/Handler;

    .line 101
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;Landroid/os/Parcelable;)V

    return-void

    :cond_9
    :goto_0
    const-string v0, "Advertisement or Celeb track"

    .line 63
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void

    :cond_a
    :goto_1
    const-string v0, "Meta data is empty"

    .line 58
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b(ZLjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
