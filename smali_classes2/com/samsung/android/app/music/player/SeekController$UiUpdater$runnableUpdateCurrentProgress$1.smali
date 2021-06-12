.class public final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;->a()V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->l(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->m(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateCurrentProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
