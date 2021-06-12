.class Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/SamsungAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionCheckPublisher"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a:I

    const/4 v0, -0x1

    .line 457
    iput v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b:I

    const-wide/16 v0, -0x1

    .line 459
    iput-wide v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 4

    .line 491
    iput p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a:I

    .line 492
    iput p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b:I

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    const-string v0, "SamsungAppsManager"

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyResult - mLatestResultUpdatedTime is set as current time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;

    .line 497
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;->a(II)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;II)V
    .locals 0

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)Z
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a()Z

    move-result p0

    return p0
.end method

.method private b(Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b(Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method private b()Z
    .locals 4

    .line 480
    iget-wide v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "SamsungAppsManager"

    const-string v1, "checkUpdate - There are update last info thus sharing it"

    .line 482
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a:I

    iget v1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)Z
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b()Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a:I

    const/4 v0, -0x1

    .line 505
    iput v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b:I

    const-wide/16 v0, -0x1

    .line 506
    iput-wide v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c:J

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c()V

    return-void
.end method
