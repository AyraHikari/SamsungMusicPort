.class public final Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;
.super Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerNameQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$GenreNameQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartResultAssemblerImpl;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$FolderQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$GenreQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ArtistQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AlbumQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AllTrackQueryArgs;,
        Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$TracksQueryArgs;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SearchMusicTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;)V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 175
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v3, v4, v6}, Lcom/samsung/android/app/music/list/playlist/PlaylistUtils;->getAudioIds(Landroid/content/Context;JZ)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 178
    sget-object v3, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlaylistAudioIds() - size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", playlistIds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private a([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 128
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v0, "_id"

    .line 129
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 131
    array-length v0, p1

    .line 132
    new-array v4, v0, [Ljava/lang/String;

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    if-nez v5, :cond_0

    const-string v7, "name"

    .line 137
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LIKE ? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v7, "AND "

    .line 139
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "name"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LIKE ? "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 146
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 147
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 153
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 154
    sget-object v3, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPlaylistIds() - count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", keywords: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v1, p1

    goto :goto_5

    .line 148
    :cond_5
    :goto_3
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlaylistIds() - cursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    const-string v4, "null"

    goto :goto_4

    .line 149
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", keywords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v1

    .line 145
    :goto_5
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    .line 162
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_7
    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;
    .locals 5

    .line 35
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mListType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 42
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    .line 52
    sget-object v2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground() - size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    return-object v1

    .line 56
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 58
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 59
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    return-object v0

    .line 63
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mListType:I

    const v2, 0x10004

    if-ne v0, v2, :cond_6

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 68
    :cond_4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 69
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    return-object v0

    :cond_5
    :goto_0
    return-object v1

    .line 73
    :cond_6
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;
    .locals 8

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "_id"

    .line 81
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "album"

    const-string v4, "artist"

    const-string v5, "genre_name"

    const-string v6, "bucket_display_name"

    const-string v7, "composer"

    .line 82
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 86
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$BaseQueryArgs;-><init>(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    move-object p2, v0

    goto :goto_0

    .line 97
    :sswitch_0
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AllTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AllTrackQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 94
    :sswitch_1
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$HeartQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 112
    :sswitch_2
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ComposerQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 109
    :sswitch_3
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$FolderQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$FolderQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 106
    :sswitch_4
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$GenreQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$GenreQueryArgs;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 103
    :sswitch_5
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ArtistQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$ArtistQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    goto :goto_0

    .line 100
    :sswitch_6
    new-instance p2, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AlbumQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->mKeywords:[Ljava/lang/String;

    invoke-direct {p2, v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$AlbumQueryArgs;-><init>([Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask$1;)V

    :goto_0
    if-eqz p2, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$Searcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;)V

    return-object v0

    :cond_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_6
        0x10003 -> :sswitch_5
        0x10006 -> :sswitch_4
        0x10007 -> :sswitch_3
        0x10008 -> :sswitch_2
        0x10030 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
