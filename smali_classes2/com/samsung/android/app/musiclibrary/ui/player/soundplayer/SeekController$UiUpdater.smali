.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;
    }
.end annotation


# instance fields
.field private final A:Landroid/view/Choreographer$FrameCallback;

.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/HandlerThread;

.field private final d:Landroid/os/HandlerThread;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/widget/SeekBar;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final k:Landroid/view/Choreographer;

.field private final l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:J

.field private r:J

.field private s:F

.field private t:J

.field private u:J

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Ljava/lang/Runnable;

.field private final y:Landroid/view/Choreographer$FrameCallback;

.field private final z:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k:Landroid/view/Choreographer;

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 245
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->s:F

    const-wide/16 v0, 0x3e8

    .line 249
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u:J

    .line 413
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->v:Ljava/lang/Runnable;

    .line 423
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    .line 451
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    .line 464
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->y:Landroid/view/Choreographer$FrameCallback;

    .line 474
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->z:Landroid/view/Choreographer$FrameCallback;

    .line 481
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->A:Landroid/view/Choreographer$FrameCallback;

    .line 253
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "first_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    .line 258
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "second_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 260
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a:Landroid/app/Activity;

    .line 267
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 271
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h:Landroid/widget/TextView;

    .line 272
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i:Landroid/widget/TextView;

    .line 273
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d(J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)J
    .locals 0

    .line 192
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    return-wide p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private d(J)V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/16 v0, 0x3e8

    .line 568
    div-long v0, p1, v0

    .line 569
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    long-to-int v0, v0

    .line 571
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 570
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o:Z

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/widget/SeekBar;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private i()J
    .locals 8

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    .line 394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q:J

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a(J)V

    .line 399
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->y:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 405
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u:J

    .line 406
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u:J

    rem-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 407
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->u:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method static synthetic i(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t:J

    return-wide v0
.end method

.method static synthetic l(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic m(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    return-object p0
.end method

.method static synthetic n(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->A:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic o(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic p(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->n:Z

    return p0
.end method

.method static synthetic q(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    return-wide v0
.end method

.method static synthetic r(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    return-wide v0
.end method

.method static synthetic s(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2

    .line 192
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q:J

    return-wide v0
.end method

.method static synthetic t(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)F
    .locals 0

    .line 192
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->s:F

    return p0
.end method

.method static synthetic u(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m:Z

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h()V

    :cond_2
    return-void
.end method

.method a(J)V
    .locals 6

    .line 330
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    .line 331
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t:J

    .line 332
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t:J

    const-wide/16 v0, 0x14

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 333
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t:J

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz p1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->l:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->t:J

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o:Z

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a(JJZ)V

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->k:Landroid/view/Choreographer;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->z:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 324
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o:Z

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method b()V
    .locals 2

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->m:Z

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method b(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->j:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 345
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->q:J

    .line 347
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c(J)V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x3e8

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    mul-long v3, v3, v1

    div-long/2addr v3, p1

    long-to-int p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 353
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g:Landroid/widget/SeekBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 356
    :goto_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->o:Z

    if-eqz p1, :cond_2

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h()V

    :cond_2
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->n:Z

    return-void
.end method

.method c()V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method c(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 531
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "--:--"

    .line 546
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 547
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "-"

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seconds:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b:Landroid/content/Context;

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 560
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method d()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->p:J

    return-wide v0
.end method

.method e()J
    .locals 2

    .line 376
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->r:J

    return-wide v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->n:Z

    return v0
.end method
