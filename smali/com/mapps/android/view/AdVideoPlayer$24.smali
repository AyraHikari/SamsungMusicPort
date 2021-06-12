.class Lcom/mapps/android/view/AdVideoPlayer$24;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1288
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    .line 1291
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1292
    div-int/lit16 v1, v0, 0x3e8

    .line 1294
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x7

    invoke-static {v2, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    .line 1296
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 1297
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->mAdPlayerListner:Lcom/mz/common/listener/AdVideoPlayerListener;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, v5, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/mz/common/listener/AdVideoPlayerListener;->b(Landroid/view/View;I)V

    .line 1298
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-boolean v3, v2, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1301
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$44(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 1302
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$43(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 1303
    :cond_1
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v2, v2, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    if-nez v2, :cond_2

    .line 1304
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-boolean v3, v2, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 1305
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$45(Lcom/mapps/android/view/AdVideoPlayer;I)V

    :cond_2
    :goto_0
    const-string v2, "111111111111111111 : "

    .line 1307
    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "second : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mVclick_offset : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1310
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$46(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v2

    const/4 v4, 0x0

    if-lt v1, v2, :cond_3

    .line 1311
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1312
    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$47(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-lez v0, :cond_4

    .line 1316
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1317
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1320
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    const-wide/16 v5, 0x96

    if-lt v1, v0, :cond_6

    .line 1321
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0, v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$49(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 1322
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1323
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    .line 1325
    :cond_5
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1326
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1329
    :cond_6
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-le v0, v1, :cond_7

    .line 1330
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    sub-int/2addr v0, v1

    .line 1331
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$48(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1332
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    .line 1335
    :cond_7
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1336
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$50(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$24;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$51(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void
.end method
