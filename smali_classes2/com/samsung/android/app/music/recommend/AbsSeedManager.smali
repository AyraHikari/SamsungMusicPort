.class public abstract Lcom/samsung/android/app/music/recommend/AbsSeedManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/recommend/SeedConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->b:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/recommend/Seed;

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/app/music/recommend/Seed;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget-object v0, v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->a:Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->b:Ljava/lang/String;

    const-string v0, "getSeeds. condition not satisfied."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget-object v0, v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->c:Lcom/samsung/android/app/music/recommend/SeedCompounder;

    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget v1, v1, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->d:I

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget v2, v2, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->e:I

    .line 41
    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/music/recommend/SeedCompounder;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    iget-object v1, v1, Lcom/samsung/android/app/music/recommend/SeedConfiguration;->b:Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/AbsSeedManager;->a:Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/SeedConfiguration;Z)V

    return-object v0
.end method
