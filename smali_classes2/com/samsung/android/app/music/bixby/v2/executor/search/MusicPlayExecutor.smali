.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

.field private e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private g:Z

.field private h:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

.field private i:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

.field private final j:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

.field private final k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->i:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    .line 201
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->j:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
    .locals 2

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;-><init>()V

    const-string v1, "searchWhere"

    .line 105
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "searchType"

    .line 106
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "artistName"

    .line 107
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "songTitle"

    .line 108
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const-string v1, "searchKeyword"

    .line 109
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->e(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    const/4 p1, 0x1

    .line 110
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a(Z)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
    .locals 7

    .line 343
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 344
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Store"

    .line 350
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    const-string p1, "image_url_big"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnail_id=?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    iget-object v6, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    aput-object v6, v5, p1

    const/4 v6, 0x0

    .line 352
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 356
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "image_url_big"

    .line 357
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 351
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 360
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    const-string p1, "Local"

    .line 362
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    .line 363
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 364
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 367
    :cond_4
    :goto_3
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Ljava/lang/String;
    .locals 1

    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessage()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_result_code"

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/16 v0, 0x138a

    if-eq p1, v0, :cond_1

    const-string p1, "Music_1_1"

    return-object p1

    :cond_1
    const-string p1, "Music_0_17"

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->STATION:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MusicPlay"

    const-string v1, "failed to play song. no songs in queue"

    .line 324
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->g:Z

    .line 326
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p1, "actionType"

    const-string v1, "Play"

    .line 327
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "searchType"

    const-string v1, "Music"

    .line 328
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "inputData"

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 331
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->g:Z

    .line 292
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v1

    .line 293
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p1, "actionType"

    const-string v4, "Play"

    .line 294
    invoke-virtual {v2, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "searchType"

    const-string v4, "Music"

    .line 295
    invoke-virtual {v2, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "resultCount"

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "inputData"

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "trackData"

    .line 298
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/ResultConverter;->a(Lcom/samsung/android/app/music/bixby/v2/result/Jsonable;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addResultData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string p1, "disablePlayControl"

    .line 299
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "playByRadio"

    .line 300
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$5;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    goto :goto_0

    :cond_0
    const-string p1, "trialPlay"

    .line 316
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "transientTime"

    const/16 p2, 0x96

    .line 317
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b()Z
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 128
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_8"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 131
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_8_6"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_5"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 138
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v4, "mobile_data"

    .line 139
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v4, "Music_0_9"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return v3

    :cond_3
    return v2
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method private c()V
    .locals 2

    const-string v0, "MusicPlay"

    const-string v1, "request play and wait for playback state change"

    .line 335
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 339
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->i:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->f:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MusicPlay"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "given command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->g:Z

    .line 79
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a()V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->j:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->e:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;->a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 91
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V

    :cond_1
    return-void
.end method
