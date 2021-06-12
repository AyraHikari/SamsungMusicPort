.class Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 549
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$800(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$700(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
