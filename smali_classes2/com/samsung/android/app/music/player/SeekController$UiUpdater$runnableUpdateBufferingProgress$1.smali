.class public final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;
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

    .line 413
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->b()I

    move-result v0

    if-ltz v0, :cond_2

    .line 419
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    const/16 v3, 0x64

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    if-ge v0, v3, :cond_2

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->h(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->i(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    .line 424
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object v0

    .line 428
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    .line 429
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$runnableUpdateBufferingProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    .line 427
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
