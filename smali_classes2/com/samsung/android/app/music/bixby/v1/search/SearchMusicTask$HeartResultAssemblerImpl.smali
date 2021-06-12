.class final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssembler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartResultAssemblerImpl"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;
    .locals 6
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 271
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    .line 273
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 276
    iput-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/favorite/Favorite;->getFavoriteCategoryAudioIds(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v0

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    .line 280
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 281
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method
