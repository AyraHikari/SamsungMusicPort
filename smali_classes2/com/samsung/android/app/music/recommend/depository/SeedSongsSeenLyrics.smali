.class public Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedDepository;


# static fields
.field private static a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->c:I

    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/recommend/Seed;
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->c:I

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/recommend/Seed;

    const-string v1, "SeedSongsSeenLyrics"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickSeed. seed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;ILcom/samsung/android/app/music/recommend/SeedCpIdGetter;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "SeedSongsSeenLyrics"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh. seed size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/recommend/Seed;

    .line 60
    invoke-interface {p3, p1, v3}, Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/Seed;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/recommend/Seed;->a(Ljava/lang/String;)V

    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SeedSongsSeenLyrics"

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh. seed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    if-lt v1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsSeenLyrics;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void

    :cond_5
    :goto_2
    const-string p1, "SeedSongsSeenLyrics"

    const-string p2, "refresh. seed null or empty"

    .line 51
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "A"

    return-object v0
.end method
