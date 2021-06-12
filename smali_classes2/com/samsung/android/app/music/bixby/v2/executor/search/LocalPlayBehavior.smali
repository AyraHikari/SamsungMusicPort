.class public Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

.field private c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

.field private d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private e:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

.field private f:Z

.field private final g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;Z)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->f:Z

    .line 152
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 51
    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->a(Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v1, "disablePlayControl"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v1, "trialPlay"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    const-string v0, "transientTime"

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->g:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 56
    iput-boolean p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->f:Z

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 4

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {v1}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    const-string v2, "_id"

    .line 132
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    const-string v2, "album_id"

    .line 134
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a:Landroid/content/Context;

    const-string v3, "title"

    .line 136
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a:Landroid/content/Context;

    const-string v3, "artist"

    .line 138
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a:Landroid/content/Context;

    const-string v3, "album"

    .line 140
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    const-string v2, "Local"

    .line 141
    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    const-string v2, "album_id"

    .line 143
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 142
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/provider/RestrictedContents$AlbumArt;->a(J)Landroid/net/Uri;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 145
    iget-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->g:Ljava/lang/String;

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->d(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->e:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-object p0
.end method

.method private b()V
    .locals 10

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    const-string v1, "resultCount"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 73
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->g()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->b()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->TRACK:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_4

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 82
    iget-object v2, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 83
    invoke-virtual {v3}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    iget-object v3, v3, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->f:Z

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    const-string v2, "MusicPlay"

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request to play track : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;)V

    .line 91
    :cond_3
    iget-object v4, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    iget v5, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    const/16 v6, -0x65

    const/16 v7, -0x64

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    goto/16 :goto_3

    .line 93
    :cond_4
    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;->ALBUM:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchType;

    if-ne v0, v1, :cond_9

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b:Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/bixby/v2/result/SearchResult;->h()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;

    .line 96
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    iget-object v3, v1, Lcom/samsung/android/app/music/bixby/v2/result/data/AlbumData;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a:Landroid/content/Context;

    iget-object v5, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v6, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v7, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v9, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 98
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    .line 101
    iget-boolean v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->f:Z

    if-eqz v4, :cond_5

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;->b(Ljava/util/List;)V

    .line 106
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 107
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    iget v4, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    const/16 v5, -0x65

    const/16 v6, -0x64

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 97
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_8

    if-eqz v3, :cond_7

    .line 107
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    throw v0

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c:Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->e:Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    return-void
.end method
