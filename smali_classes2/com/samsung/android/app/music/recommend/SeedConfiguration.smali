.class public Lcom/samsung/android/app/music/recommend/SeedConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultSeedCompounder;,
        Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultRefreshScheduler;,
        Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultPreConditionChecker;,
        Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/samsung/android/app/music/recommend/SeedCompounder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final d:I

.field public final e:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->d:I

    .line 26
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->e:I

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->c(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedCompounder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->d(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    .line 29
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->e(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;)V

    return-void
.end method
