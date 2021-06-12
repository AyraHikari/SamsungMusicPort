.class public Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/SeedConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

.field private b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

.field private c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->d:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->e:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedCompounder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    .locals 0

    .line 44
    iput p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->d:I

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/recommend/SeedCompounder;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/recommend/SeedConfiguration;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultPreConditionChecker;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultPreConditionChecker;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultSeedCompounder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultSeedCompounder;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultRefreshScheduler;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultRefreshScheduler;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    .line 81
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->e:I

    return-object p0
.end method
