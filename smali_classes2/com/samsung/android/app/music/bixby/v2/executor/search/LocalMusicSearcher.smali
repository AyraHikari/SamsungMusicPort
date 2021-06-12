.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

.field private c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

.field private d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 64
    new-instance p1, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I
    .locals 8

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "MusicSearch"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query from db with keyword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 178
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 180
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    const-string v2, "MusicSearch"

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add searched track : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 191
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b(Landroid/database/Cursor;)Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;)Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    const-string v2, "MusicSearch"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add searched album : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 177
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 198
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    throw v0

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return v1
.end method

.method private a(Landroid/database/Cursor;)Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 222
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    const-string v2, "title"

    .line 224
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    const-string v2, "artist"

    .line 226
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    const-string v2, "album"

    .line 228
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    const-string v1, "_id"

    .line 229
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string v1, "album_id"

    .line 230
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    const-string v1, "album_id"

    .line 232
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 231
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 234
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    const-string p1, "Local"

    .line 235
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->d:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult$Builder;->a()Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/database/Cursor;)Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 241
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;-><init>()V

    const-string v1, "album_id"

    .line 242
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    const-string v2, "album"

    .line 244
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->b:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    const-string v2, "artist"

    .line 246
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->e:Ljava/lang/String;

    const-string v1, "album_id"

    .line 248
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 247
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->c:Ljava/lang/String;

    .line 250
    iget-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->d:Ljava/lang/String;

    const-string p1, "Local"

    .line 251
    iput-object p1, v0, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->c(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 203
    new-instance v0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->toProviderValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    move-result-object p1

    const/16 v0, 0x64

    .line 205
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->b(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5

    .line 209
    new-instance v0, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 210
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->toProviderValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    move-result-object v0

    const-string v1, "artist LIKE ? ESCAPE \'\\\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    move-result-object p1

    const/16 v0, 0x64

    .line 213
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->b(I)Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchQueryArgs$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;)V
    .locals 4

    const-string v0, "MusicSearch"

    const-string v1, "start search music in local"

    .line 70
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->c:Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher$OnSearchCompleteListener;

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->c()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->ARTIST_NAME:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->d()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;->UNDEFINED_KEYWORD:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchSource;

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MusicSearch"

    const-string v1, "query this artist name to server to check if there\'s translated name"

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF8"

    .line 84
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, "MusicSearch"

    const-string v1, "failed to encode keyword"

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    const-string v1, "3"

    sget-object v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->a:[Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$SearchSortItem;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;)V

    .line 92
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;->a()V

    :goto_1
    return-void
.end method
