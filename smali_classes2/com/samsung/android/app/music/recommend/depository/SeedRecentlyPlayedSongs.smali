.class public Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedDepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs$Query;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;


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

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->a:Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->c:I

    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->a:Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/recommend/Seed;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->c:I

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/recommend/Seed;

    const-string v1, "SeedRecentlyPlayedSongs"

    .line 50
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
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs$Query;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs$Query;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    const-string p1, "SeedRecentlyPlayedSongs"

    const-string p2, "refresh. cursor is null!!"

    .line 61
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v1, p1

    goto/16 :goto_2

    :cond_1
    :try_start_1
    const-string v2, "SeedRecentlyPlayedSongs"

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh. count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "title"

    .line 70
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "album"

    .line 71
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "artist"

    .line 72
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    new-instance v7, Lcom/samsung/android/app/music/recommend/Seed;

    invoke-direct {v7, v4, v5, v6}, Lcom/samsung/android/app/music/recommend/Seed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 75
    invoke-interface {p3, p1, v7}, Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/Seed;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    invoke-virtual {v7, v4}, Lcom/samsung/android/app/music/recommend/Seed;->a(Ljava/lang/String;)V

    .line 78
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "SeedRecentlyPlayedSongs"

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh. seed - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    if-lt v2, p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0

    .line 89
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedRecentlyPlayedSongs;->b:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    .line 93
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    .line 59
    :goto_2
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    .line 93
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "R"

    return-object v0
.end method
