.class Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;)V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SMUSIC-MusicVideo"

    const-string v1, "requestToPlayVideo.onNext : Error! Video uri is empty"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;->getResultCode()I

    move-result v1

    .line 495
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;->getResultCode()I

    move-result p1

    .line 494
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;II)V

    return-void

    .line 499
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "www.youtube.com"

    .line 500
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 505
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    .line 506
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;

    .line 509
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 510
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayArtist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, ", "

    .line 516
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 520
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    .line 521
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v2, v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;I)I

    const-string p1, "MusicVideo"

    const-string v0, "requestToPlayVideo.onNext : end"

    .line 524
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 485
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;I)I

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 480
    check-cast p1, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;->a(Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;)V

    return-void
.end method
