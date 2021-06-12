.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 277
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a:J

    .line 279
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a:J

    return-void
.end method

.method a(J)V
    .locals 0

    .line 299
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    return-void
.end method

.method b()J
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->c()V

    .line 287
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    return-wide v0
.end method

.method c()V
    .locals 6

    .line 291
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a:J

    sub-long/2addr v0, v4

    .line 293
    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    .line 295
    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a:J

    return-void
.end method

.method d()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 303
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b:J

    return-void
.end method
