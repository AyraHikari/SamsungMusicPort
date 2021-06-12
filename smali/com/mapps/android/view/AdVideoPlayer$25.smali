.class Lcom/mapps/android/view/AdVideoPlayer$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback(Lcom/mz/common/network/data/DataNTMovie;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1350
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 1353
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1354
    div-int/lit16 v1, v0, 0x3e8

    .line 1355
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    .line 1357
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, v5, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/mz/common/listener/AdVideoPlayerListener;->b(Landroid/view/View;I)V

    .line 1358
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-boolean v3, v2, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 1361
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1362
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$44(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 1363
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    if-nez v2, :cond_2

    .line 1365
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-boolean v3, v2, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 1366
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;I)V

    :cond_2
    :goto_0
    const-string v2, "2222222222222222222222 : "

    .line 1368
    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "second : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mVclick_offset : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v2

    const/4 v4, 0x0

    if-lt v1, v2, :cond_3

    .line 1372
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1373
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1376
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "m_nlimtSec : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v5, v5, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1377
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lt v1, v2, :cond_4

    .line 1379
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1380
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1, v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$49(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1381
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    :cond_4
    const-wide/16 v1, 0x96

    if-lez v0, :cond_5

    .line 1386
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1387
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1389
    :cond_5
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1390
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$25;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method
