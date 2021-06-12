.class Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 528
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$300(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$400(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;I)J

    move-result-wide p1

    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$302(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;I)I

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$600(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$500(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$600(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$500(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 543
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$1;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$902(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
