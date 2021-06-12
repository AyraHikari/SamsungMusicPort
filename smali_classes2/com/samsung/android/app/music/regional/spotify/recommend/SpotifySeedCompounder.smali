.class public Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedCompounder;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    const/4 v2, 0x5

    new-array v3, v2, [Lcom/samsung/android/app/music/recommend/SeedDepository;

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->c:Lcom/samsung/android/app/music/recommend/SeedDepository;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;-><init>([Lcom/samsung/android/app/music/recommend/SeedDepository;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    new-array v3, v2, [Lcom/samsung/android/app/music/recommend/SeedDepository;

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v7

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v8

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->e:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v9

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;-><init>([Lcom/samsung/android/app/music/recommend/SeedDepository;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    new-array v3, v2, [Lcom/samsung/android/app/music/recommend/SeedDepository;

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v7

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v8

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->f:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v9

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;-><init>([Lcom/samsung/android/app/music/recommend/SeedDepository;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    new-array v3, v2, [Lcom/samsung/android/app/music/recommend/SeedDepository;

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v5

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->d:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v6

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->c:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v7

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->e:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v8

    sget-object v4, Lcom/samsung/android/app/music/recommend/SeedDepositories;->f:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v4, v3, v9

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;-><init>([Lcom/samsung/android/app/music/recommend/SeedDepository;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    new-array v2, v2, [Lcom/samsung/android/app/music/recommend/SeedDepository;

    sget-object v3, Lcom/samsung/android/app/music/recommend/SeedDepositories;->c:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v3, v2, v5

    sget-object v3, Lcom/samsung/android/app/music/recommend/SeedDepositories;->e:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v3, v2, v6

    sget-object v3, Lcom/samsung/android/app/music/recommend/SeedDepositories;->f:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v3, v2, v7

    sget-object v3, Lcom/samsung/android/app/music/recommend/SeedDepositories;->g:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v3, v2, v8

    sget-object v3, Lcom/samsung/android/app/music/recommend/SeedDepositories;->b:Lcom/samsung/android/app/music/recommend/SeedDepository;

    aput-object v3, v2, v9

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;-><init>([Lcom/samsung/android/app/music/recommend/SeedDepository;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->b:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "pref_key_spotify_seed_strategy_index"

    const/4 v1, -0x1

    .line 57
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    .line 58
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    if-ltz v0, :cond_1

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    const-string v0, "pref_key_spotify_seed_last_strategy_name"

    const/4 v1, 0x0

    .line 60
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->d:Ljava/lang/String;

    const-string v0, "pref_key_spotify_seed_last_strategy_order"

    .line 61
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->e:Ljava/lang/String;

    const-string v0, "pref_key_spotify_seed_last_strategy_seed"

    .line 62
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;)V

    .line 65
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder$1;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->b:Ljava/util/List;

    :cond_1
    const-string p1, "SpotifySeedCompounder"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLastStrategyInfoIfNotLoaded. index - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", order - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_key_spotify_seed_strategy_index"

    .line 76
    iget v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_key_spotify_seed_last_strategy_name"

    .line 77
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pref_key_spotify_seed_last_strategy_order"

    .line 78
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pref_key_spotify_seed_last_strategy_seed"

    .line 79
    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p4}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;II)Ljava/util/List;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    .line 86
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->a(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "SpotifySeedCompounder"

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSeeds. can\'t make seed with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->b:Ljava/util/List;

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->a()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->b()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->e:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->b:Ljava/util/List;

    const-string p3, "SpotifySeedCompounder"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeeds. strategy name - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "SpotifySeedCompounder"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeeds. real seed order - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2
.end method

.method public a(Landroid/content/Context;ILcom/samsung/android/app/music/recommend/SeedCpIdGetter;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a(Landroid/content/Context;)V

    .line 116
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 117
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    .line 118
    iput v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->f:I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->c:Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/SeedCompoundStrategy;->a(Landroid/content/Context;ILcom/samsung/android/app/music/recommend/SeedCpIdGetter;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifySeedCompounder;->e:Ljava/lang/String;

    return-object v0
.end method
