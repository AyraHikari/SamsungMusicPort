.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 4

    const-string v0, "SV-Dlna"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackResponse - onGetMediaInfoResponseReceived mediaInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 444
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 447
    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    .line 448
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/media/MediaInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J

    .line 449
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;->onMediaInfoUpdated()V

    .line 452
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;)V

    goto :goto_1

    .line 454
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    move-result-object p1

    const/16 p2, 0x12c

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;I)V

    :goto_1
    return-void
.end method

.method public onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 0

    return-void
.end method

.method public onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    return-void
.end method

.method public onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackResponse - onPauseResponseReceived Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    :cond_0
    return-void
.end method

.method public onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    const-string p2, "SV-Dlna"

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackResponse - onPlayResponseReceived Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v0, 0x6

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 400
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 402
    sget-object p2, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p2, p3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 403
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_6

    .line 404
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;)V

    goto/16 :goto_0

    .line 408
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/allshare/Item;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "SV-Dlna"

    const-string p2, "PlaybackResponse - onPlayResponseReceived mItem is null"

    .line 409
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void

    .line 413
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/allshare/Item;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "SV-Dlna"

    const-string p2, "PlaybackResponse - onPlayResponseReceived currentUri is null"

    .line 415
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "SV-Dlna"

    const-string p2, "PlaybackResponse - onPlayResponseReceived ai is null"

    .line 421
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void

    .line 425
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "SV-Dlna"

    const-string p2, "PlaybackResponse - onPlayResponseReceived uri is null"

    .line 427
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void

    .line 431
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 432
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "SV-Dlna"

    .line 433
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PlaybackResponse - onPlayResponseReceived uri is not matched (uri.getPath: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackResponse - onResumeResponseReceived Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    :cond_0
    return-void
.end method

.method public onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackResponse - onSeekResponseReceived seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " Error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Z)Z

    return-void
.end method

.method public onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackResponse - onStopResponseReceived Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
