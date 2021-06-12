.class Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayingInfo"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$1;)V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;-><init>()V

    return-void
.end method

.method private d()Z
    .locals 4

    .line 572
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 557
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b:J

    const/4 v2, 0x0

    .line 558
    iput v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->c:F

    .line 559
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d:J

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    return-void
.end method

.method a(J)V
    .locals 0

    .line 551
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b:J

    const/4 p1, 0x0

    .line 552
    iput p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->c:F

    const-wide/16 p1, 0x0

    .line 553
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d:J

    return-void
.end method

.method a(JFJ)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 543
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    .line 545
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b:J

    .line 546
    iput p3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->c:F

    .line 547
    iput-wide p4, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d:J

    return-void
.end method

.method b()J
    .locals 6

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b:J

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->d:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->c:F

    mul-float v2, v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 568
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b:J

    return-wide v0
.end method

.method c()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
