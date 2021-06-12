.class final Lcom/google/android/exoplayer2/util/SystemClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Clock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 2
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
