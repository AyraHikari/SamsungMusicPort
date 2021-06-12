.class public Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedDepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;


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

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->c:I

    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->a:Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/recommend/Seed;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->c:I

    iget-object v2, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/recommend/Seed;

    const-string v1, "SeedSongsInPlaylist"

    .line 47
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
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-static {p1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v1, "SeedSongsInPlaylist"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh. playlistSeeds size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/recommend/PlaylistSeed;

    .line 67
    new-instance v4, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;

    iget-object v5, v3, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->a:Ljava/lang/String;

    iget-wide v6, v3, Lcom/samsung/android/app/music/recommend/PlaylistSeed;->b:J

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist$Query;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 68
    invoke-static {p1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz v3, :cond_1

    .line 91
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 73
    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "title"

    .line 74
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "album"

    .line 75
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "artist"

    .line 76
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    new-instance v8, Lcom/samsung/android/app/music/recommend/Seed;

    invoke-direct {v8, v5, v6, v7}, Lcom/samsung/android/app/music/recommend/Seed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 79
    invoke-interface {p3, p1, v8}, Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;->a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/Seed;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 81
    invoke-virtual {v8, v5}, Lcom/samsung/android/app/music/recommend/Seed;->a(Ljava/lang/String;)V

    .line 82
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "SeedSongsInPlaylist"

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh. seed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v1, 0x1

    if-lt v1, p2, :cond_3

    move v1, v5

    goto :goto_3

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v4, p1

    .line 68
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    .line 91
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    invoke-virtual {v4, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    throw p1

    .line 94
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/recommend/depository/SeedSongsInPlaylist;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void

    :cond_9
    :goto_6
    const-string p1, "SeedSongsInPlaylist"

    const-string p2, "refresh. seed null or empty"

    .line 57
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "P"

    return-object v0
.end method
