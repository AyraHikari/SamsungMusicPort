.class public Lcom/dawin/a/a;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/a/a$a;,
        Lcom/dawin/a/a$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/util/Timer;

.field private C:Ljava/util/TimerTask;

.field private D:I

.field private E:F

.field private F:Z

.field private G:Landroid/os/Handler;

.field private H:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/media/MediaPlayer;

.field private f:Z

.field private g:Landroid/view/SurfaceHolder;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/dawin/a/a$b;

.field private w:Lcom/dawin/a/a$a;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/a/a;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/dawin/a/a;->c:I

    iput-boolean v0, p0, Lcom/dawin/a/a;->f:Z

    iput v1, p0, Lcom/dawin/a/a;->h:I

    iput v1, p0, Lcom/dawin/a/a;->i:I

    iput v1, p0, Lcom/dawin/a/a;->l:I

    iput v1, p0, Lcom/dawin/a/a;->m:I

    iput v1, p0, Lcom/dawin/a/a;->n:I

    iput v1, p0, Lcom/dawin/a/a;->o:I

    iput v1, p0, Lcom/dawin/a/a;->p:I

    iput v1, p0, Lcom/dawin/a/a;->q:I

    iput-boolean v0, p0, Lcom/dawin/a/a;->r:Z

    iput-boolean v0, p0, Lcom/dawin/a/a;->s:Z

    iput-boolean v0, p0, Lcom/dawin/a/a;->t:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/dawin/a/a;->u:I

    iput v0, p0, Lcom/dawin/a/a;->x:I

    iput v0, p0, Lcom/dawin/a/a;->y:I

    iput v0, p0, Lcom/dawin/a/a;->z:I

    iput v0, p0, Lcom/dawin/a/a;->A:I

    iput v0, p0, Lcom/dawin/a/a;->D:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/dawin/a/a;->E:F

    iput-boolean v0, p0, Lcom/dawin/a/a;->F:Z

    new-instance v0, Lcom/dawin/a/a$1;

    invoke-direct {v0, p0}, Lcom/dawin/a/a$1;-><init>(Lcom/dawin/a/a;)V

    iput-object v0, p0, Lcom/dawin/a/a;->G:Landroid/os/Handler;

    new-instance v0, Lcom/dawin/a/a$2;

    invoke-direct {v0, p0}, Lcom/dawin/a/a$2;-><init>(Lcom/dawin/a/a;)V

    iput-object v0, p0, Lcom/dawin/a/a;->H:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object p1, p0, Lcom/dawin/a/a;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/dawin/a/a;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/a/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/dawin/a/a;->u:I

    invoke-direct {p0}, Lcom/dawin/a/a;->i()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dawin/a/a;)Lcom/dawin/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    return-object p0
.end method

.method private a(IIII)Lcom/dawin/util/CommonUtils$ScreenSize;
    .locals 5

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    if-ne p4, v0, :cond_1

    :cond_0
    const/16 p3, 0x10

    const/16 p4, 0x9

    :cond_1
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v2, p4

    mul-float v0, v0, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    if-gt p1, p1, :cond_3

    if-le v0, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    move v0, p1

    goto :goto_1

    :cond_3
    :goto_0
    int-to-float v0, p2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v1, p2

    :goto_1
    new-instance v2, Lcom/dawin/util/CommonUtils$ScreenSize;

    invoke-direct {v2, v0, v1}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptimalVideoSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic b(Lcom/dawin/a/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dawin/a/a;->G:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/dawin/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/dawin/a/a;->h:I

    iput v0, p0, Lcom/dawin/a/a;->i:I

    invoke-virtual {p0}, Lcom/dawin/a/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dawin/a/a;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/dawin/a/a;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/dawin/a/a;->requestFocus()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/a/a;->a:I

    iput-boolean v0, p0, Lcom/dawin/a/a;->F:Z

    invoke-direct {p0}, Lcom/dawin/a/a;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    new-instance v0, Lcom/dawin/a/a$3;

    invoke-direct {v0, p0}, Lcom/dawin/a/a$3;-><init>(Lcom/dawin/a/a;)V

    iput-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    :cond_2
    return-void
.end method

.method private k()V
    .locals 7

    const-string v0, "Video ------- startTimer() ---- "

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/a/a;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/a/a;->t:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    iget-object v1, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    iget-object v2, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    const-string v0, "Video cancelTimer"

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/dawin/a/a;->t:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/a/a;->t:Z

    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iput-object v1, p0, Lcom/dawin/a/a;->B:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/dawin/a/a;->C:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private m()V
    .locals 5

    iget-object v0, p0, Lcom/dawin/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dawin/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget v2, p0, Lcom/dawin/a/a;->E:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/dawin/a/a;->E:F

    iget v4, p0, Lcom/dawin/a/a;->E:F

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    iput v0, p0, Lcom/dawin/a/a;->c:I

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/dawin/a/a;->H:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/dawin/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput v1, p0, Lcom/dawin/a/a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput v0, p0, Lcom/dawin/a/a;->a:I

    iget-object v0, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object v2, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-interface {v0, v2, v1}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/a/a;->a:I

    iput-boolean v0, p0, Lcom/dawin/a/a;->f:Z

    iput-boolean v0, p0, Lcom/dawin/a/a;->r:Z

    iput-boolean v0, p0, Lcom/dawin/a/a;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dawin/a/a;->n:I

    iput v0, p0, Lcom/dawin/a/a;->o:I

    iput v0, p0, Lcom/dawin/a/a;->p:I

    iput v0, p0, Lcom/dawin/a/a;->q:I

    iput v0, p0, Lcom/dawin/a/a;->h:I

    iput v0, p0, Lcom/dawin/a/a;->i:I

    return-void
.end method

.method private p()Z
    .locals 3

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dawin/a/a;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/dawin/a/a;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dawin/a/a;->a:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setFixedVideoSize(I)V
    .locals 3

    iget v0, p0, Lcom/dawin/a/a;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/dawin/a/a;->m:I

    if-gtz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lcom/dawin/a/a;->l:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/dawin/a/a;->m:I

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/dawin/a/a;->z:I

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->A:I

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->p:I

    if-lez p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->q:I

    if-lez p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->p:I

    iget v0, p0, Lcom/dawin/a/a;->q:I

    iget v1, p0, Lcom/dawin/a/a;->l:I

    iget v2, p0, Lcom/dawin/a/a;->m:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dawin/a/a;->a(IIII)Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/a/a;->z:I

    invoke-virtual {p1}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/dawin/a/a;->A:I

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    invoke-interface {p1}, Lcom/dawin/a/a$b;->b()V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Land Fixed video size set!!(w"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dawin/a/a;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dawin/a/a;->A:I

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/dawin/a/a;->x:I

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->y:I

    if-gtz p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->n:I

    if-lez p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->o:I

    if-lez p1, :cond_5

    iget p1, p0, Lcom/dawin/a/a;->n:I

    iget v0, p0, Lcom/dawin/a/a;->o:I

    iget v1, p0, Lcom/dawin/a/a;->l:I

    iget v2, p0, Lcom/dawin/a/a;->m:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dawin/a/a;->a(IIII)Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/a/a;->x:I

    invoke-virtual {p1}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/dawin/a/a;->y:I

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    invoke-interface {p1}, Lcom/dawin/a/a$b;->b()V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port Fixed video size set!!(w"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dawin/a/a;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dawin/a/a;->y:I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer release : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-direct {p0}, Lcom/dawin/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dawin/a/a;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/dawin/a/a;->o()V

    :cond_1
    return-void
.end method

.method public a(III)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParentViewSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    if-lez p2, :cond_3

    if-lez p3, :cond_3

    const/16 v0, 0x68

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-le p2, p3, :cond_0

    iget-boolean v2, p0, Lcom/dawin/a/a;->s:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/dawin/a/a;->s:Z

    iput p2, p0, Lcom/dawin/a/a;->p:I

    iput p3, p0, Lcom/dawin/a/a;->q:I

    :cond_0
    iget-boolean p2, p0, Lcom/dawin/a/a;->s:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/dawin/a/a;->f:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/dawin/a/a;->r:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/dawin/a/a;->r:Z

    iput p2, p0, Lcom/dawin/a/a;->n:I

    iput p3, p0, Lcom/dawin/a/a;->o:I

    :cond_1
    iget-boolean p2, p0, Lcom/dawin/a/a;->r:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/dawin/a/a;->f:Z

    if-eqz p2, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lcom/dawin/a/a;->setFixedVideoSize(I)V

    :cond_2
    iget-object p1, p0, Lcom/dawin/a/a;->G:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer reset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/dawin/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/dawin/a/a;->j()V

    invoke-direct {p0}, Lcom/dawin/a/a;->o()V

    invoke-direct {p0}, Lcom/dawin/a/a;->n()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 4

    invoke-virtual {p0}, Lcom/dawin/a/a;->getVideoSize()Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/dawin/a/a;->j:I

    iget v0, p0, Lcom/dawin/a/a;->k:I

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/dawin/a/a;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dawin/a/a;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/dawin/a/a;->refreshDrawableState()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BKVideoPlayer size Changed(width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", changed Height : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer pause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/dawin/a/a;->D:I

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/dawin/a/a;->a:I

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer resume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ================ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dawin/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dawin/a/a;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dawin/a/a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/dawin/a/a;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/dawin/a/a;->D:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/dawin/a/a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/dawin/a/a;->D:I

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/dawin/a/a;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/dawin/a/a;->a:I

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/dawin/a/a;->a:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/dawin/a/a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget v0, p0, Lcom/dawin/a/a;->c:I

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMediaVolume()F
    .locals 1

    iget v0, p0, Lcom/dawin/a/a;->E:F

    return v0
.end method

.method public getVideoSize()Lcom/dawin/util/CommonUtils$ScreenSize;
    .locals 5

    iget v0, p0, Lcom/dawin/a/a;->u:I

    const/16 v1, 0x9

    const/16 v2, 0x10

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/dawin/a/a;->s:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dawin/a/a;->z:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/dawin/a/a;->A:I

    if-lez v0, :cond_0

    iget v3, p0, Lcom/dawin/a/a;->z:I

    iget v0, p0, Lcom/dawin/a/a;->A:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/dawin/a/a;->p:I

    iget v3, p0, Lcom/dawin/a/a;->q:I

    :goto_0
    invoke-direct {p0, v0, v3, v2, v1}, Lcom/dawin/a/a;->a(IIII)Lcom/dawin/util/CommonUtils$ScreenSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/dawin/a/a;->u:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/dawin/a/a;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dawin/a/a;->x:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/dawin/a/a;->y:I

    if-lez v0, :cond_2

    iget v3, p0, Lcom/dawin/a/a;->x:I

    iget v0, p0, Lcom/dawin/a/a;->y:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/dawin/a/a;->n:I

    iget v3, p0, Lcom/dawin/a/a;->o:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/dawin/util/CommonUtils$ScreenSize;

    invoke-direct {v1, v3, v0}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    return-object v1
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================ VideoPlayer stop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;)V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/a/a;->l()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer error(what : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/16 p1, -0x26

    if-ne p2, p1, :cond_0

    if-nez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer Skip error ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object p3, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-interface {p1, p3, p2}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    iput p1, p0, Lcom/dawin/a/a;->j:I

    iput p2, p0, Lcom/dawin/a/a;->k:I

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "BKVideoPlayer - onPrepared"

    invoke-static {v0}, Lcom/dawin/util/e;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dawin/a/a;->f:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/dawin/a/a;->a:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/dawin/a/a;->h:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/dawin/a/a;->i:I

    iget p1, p0, Lcom/dawin/a/a;->h:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/dawin/a/a;->i:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/dawin/a/a;->G:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/dawin/a/a;->w:Lcom/dawin/a/a$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dawin/a/a;->w:Lcom/dawin/a/a$a;

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Lcom/dawin/a/a$a;->a(Landroid/media/MediaPlayer;)V

    :cond_0
    invoke-direct {p0}, Lcom/dawin/a/a;->k()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/dawin/a/a;->a:I

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-interface {p1, v1, v0}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentOrientation(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BKVideoPlayer - Set Current orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v2, "portrait"

    goto :goto_0

    :cond_0
    const-string v2, "landscape"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/dawin/a/a;->u:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v0, p0, Lcom/dawin/a/a;->u:I

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/dawin/a/a;->G:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iput p1, p0, Lcom/dawin/a/a;->u:I

    :goto_2
    return-void
.end method

.method public setMediaVolume(F)V
    .locals 1

    iput p1, p0, Lcom/dawin/a/a;->E:F

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/dawin/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/a/a;->w:Lcom/dawin/a/a$a;

    return-void
.end method

.method public setOnVideoPlayerListener(Lcom/dawin/a/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/a/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dawin/a/a;->m()V

    invoke-virtual {p0}, Lcom/dawin/a/a;->invalidate()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "================ Surface surfaceChanged ================"

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "================ Surface created ================"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dawin/a/a;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/dawin/a/a;->F:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/dawin/a/a;->D:I

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/dawin/a/a;->a:I

    iput v0, p0, Lcom/dawin/a/a;->D:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dawin/a/a;->v:Lcom/dawin/a/a$b;

    iget-object v1, p0, Lcom/dawin/a/a;->e:Landroid/media/MediaPlayer;

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/dawin/a/a$b;->a(Landroid/media/MediaPlayer;I)V

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/dawin/a/a;->F:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "================== Surface destroyed ====================="

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dawin/a/a;->F:Z

    return-void
.end method
