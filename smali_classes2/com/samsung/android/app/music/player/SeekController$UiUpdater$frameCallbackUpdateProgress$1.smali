.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4

    .line 457
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a()Z

    move-result p1

    if-nez p1, :cond_5

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 465
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide p1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->j(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide p1

    const-wide/16 v2, 0x14

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->n(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-double p1, p1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->o(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)F

    move-result v2

    float-to-double v2, v2

    mul-double p1, p1, v2

    .line 473
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide v2

    double-to-long p1, p1

    add-long/2addr v2, p1

    mul-long v0, v0, v2

    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide p1

    div-long/2addr v0, p1

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    .line 466
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(J)V

    .line 467
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide p1

    mul-long v0, v0, p1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide p1

    div-long/2addr v0, p1

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 478
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-ge p2, p1, :cond_5

    .line 479
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 480
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;->a(I)V

    .line 481
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$frameCallbackUpdateProgress$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->k(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$DebugUiUpdater;->b()V

    :cond_5
    return-void
.end method
