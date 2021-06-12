.class public final Lcom/google/android/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlayerMessage$Sender;,
        Lcom/google/android/exoplayer2/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field private final b:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

.field private final c:Lcom/google/android/exoplayer2/Timeline;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILandroid/os/Handler;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->b:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    .line 86
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->a:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 87
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlayerMessage;->c:Lcom/google/android/exoplayer2/Timeline;

    .line 88
    iput-object p5, p0, Lcom/google/android/exoplayer2/PlayerMessage;->f:Landroid/os/Handler;

    .line 89
    iput p4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->g:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->h:J

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->i:Z

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->j:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 131
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->c:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->k:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->k:Z

    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->l:Z

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->a:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->d:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Landroid/os/Handler;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->h:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->i:Z

    return v0
.end method

.method public i()Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 6

    .line 236
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 237
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->h:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 238
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->i:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 240
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->j:Z

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->b:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/PlayerMessage$Sender;->a(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-object p0
.end method

.method public declared-synchronized j()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->j:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 262
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->l:Z

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 259
    monitor-exit p0

    throw v0
.end method
