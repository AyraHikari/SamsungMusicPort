.class public Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;
.super Lcom/samsung/android/app/music/recommend/AbsSeedManager;
.source "SourceFile"


# static fields
.field private static a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;->a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;-><init>()V

    const/4 v1, 0x5

    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a(I)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->b(I)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;

    invoke-direct {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;-><init>()V

    .line 29
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a(Lcom/samsung/android/app/music/recommend/SeedCompounder;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;

    invoke-direct {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;-><init>()V

    .line 30
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a(Lcom/samsung/android/app/music/recommend/SeedRefreshScheduler;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedPreConditionChecker;

    invoke-direct {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedPreConditionChecker;-><init>()V

    .line 31
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a(Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;)Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$Builder;->a()Lcom/samsung/android/app/music/recommend/SeedConfiguration;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/recommend/AbsSeedManager;-><init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration;)V

    const-string v0, "SpotifySeedManager"

    const-string v1, "SpotifySeedManager. instance created."

    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;->a:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;

    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedManager;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "track"

    .line 45
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
