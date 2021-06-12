.class public Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TickRunnable"
.end annotation


# instance fields
.field protected a:J

.field protected b:J

.field final synthetic c:Lcom/devbrackets/android/exomedia/util/StopWatch;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V
    .locals 2

    .line 217
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 218
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->a:J

    const-wide/16 v0, -0x1

    .line 219
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/util/StopWatch;->g:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget v2, v2, Lcom/devbrackets/android/exomedia/util/StopWatch;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 223
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->h:J

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->b:J

    .line 227
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->a:J

    .line 228
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v1, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->a:J

    iget-wide v4, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->b:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget v3, v3, Lcom/devbrackets/android/exomedia/util/StopWatch;->k:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    .line 229
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->a:J

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->b:J

    .line 231
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->a:Z

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->a()V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->f:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->f:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v1, v1, Lcom/devbrackets/android/exomedia/util/StopWatch;->i:J

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->c:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v3, v3, Lcom/devbrackets/android/exomedia/util/StopWatch;->j:J

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;->a(J)V

    :cond_2
    return-void
.end method
