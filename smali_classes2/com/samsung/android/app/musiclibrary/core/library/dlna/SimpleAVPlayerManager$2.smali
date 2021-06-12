.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;


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

    .line 464
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 2

    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onBuffering"

    .line 527
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    return-void
.end method

.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerStateListener - onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onFinish"

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 519
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    .line 520
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPause"

    .line 504
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPlay"

    .line 489
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onPlay is called after request so Return."

    .line 491
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    return-void
.end method

.method public onProgress(J)V
    .locals 6

    const-string v0, "SV-Dlna"

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSECAVPlayerStateListener - onProgress progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " msec"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isPlaying: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 479
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "true"

    goto :goto_0

    :cond_0
    const-string v4, "false"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mDoNotUpdateProgress: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 480
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 481
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result p1

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .line 482
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 483
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$1102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "SV-Dlna"

    const-string v1, "mSECAVPlayerStateListener - onStop"

    .line 469
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V

    return-void
.end method
