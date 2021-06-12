.class Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionCalculator"
.end annotation


# instance fields
.field private mPassedTime:J

.field private mStartedTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 378
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    .line 380
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method getCurrentPosition()J
    .locals 4

    .line 395
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 396
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 398
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    return-wide v0
.end method

.method startTimer(J)V
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    return-void
.end method

.method stopTimer(J)V
    .locals 4

    .line 388
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 389
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    .line 391
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    return-void
.end method

.method updateCurrentPosition(J)V
    .locals 4

    .line 402
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mStartedTime:J

    .line 405
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->mPassedTime:J

    return-void
.end method
