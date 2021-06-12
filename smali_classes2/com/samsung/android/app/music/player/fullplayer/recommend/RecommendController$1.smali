.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V
    .locals 3

    const-string v0, "SMUSIC-Recommend"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recommendableCheckFinished() recommendable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z

    if-eqz p2, :cond_1

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 117
    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 118
    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 116
    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Landroid/net/Uri;J)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a()V

    :goto_0
    return-void
.end method
