.class public Lcom/devbrackets/android/exomedia/util/StopWatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;,
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;
    }
.end annotation


# instance fields
.field protected volatile a:Z

.field protected b:I

.field protected c:Landroid/os/Handler;

.field protected d:Landroid/os/HandlerThread;

.field protected e:Z

.field protected f:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

.field protected g:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

.field protected h:J

.field protected i:J

.field protected j:J

.field protected k:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->a:Z

    const/16 v1, 0x21

    .line 38
    iput v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->b:I

    .line 42
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->e:Z

    .line 45
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->g:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->h:J

    .line 48
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    .line 49
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->j:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    iput v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->k:F

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->c:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 151
    :cond_1
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->j:J

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->a:Z

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    return-void
.end method

.method public a(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 102
    iput p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->k:F

    return-void
.end method

.method public b()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->a:Z

    return v0
.end method

.method public c()J
    .locals 4

    .line 194
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->j:J

    add-long/2addr v0, v2

    return-wide v0
.end method
