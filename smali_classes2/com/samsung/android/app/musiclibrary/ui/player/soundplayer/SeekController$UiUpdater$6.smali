.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    .line 484
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 492
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    .line 496
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 497
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    const-wide/16 v2, 0x14

    cmp-long p1, p1, v2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 505
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->s(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    long-to-double p1, p1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)F

    move-result v2

    float-to-double v2, v2

    mul-double p1, p1, v2

    .line 506
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 507
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v2

    double-to-long p1, p1

    add-long/2addr v2, p1

    mul-long v2, v2, v0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    div-long/2addr v2, p1

    long-to-int p1, v2

    goto :goto_1

    .line 498
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)J

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide p1

    mul-long p1, p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 500
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 513
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 514
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 515
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a(I)V

    .line 516
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->b()V

    .line 520
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 521
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 522
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 524
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 525
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
