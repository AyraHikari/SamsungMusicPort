.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
.super Lcom/samsung/android/app/music/search/AbstractSearchCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/music/search/AbstractSearchCursor;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/AbstractSearchCursor;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->g:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;)V

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    return-void
.end method

.method private g()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 61
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->g:I

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->c(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    return-object v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    return-object v0

    .line 89
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    return-object v0

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->h:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 231
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .locals 0

    .line 201
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "track_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "spotify_playlist_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "lyric_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "artist_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "total_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_5
    const-string v1, "playlist_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "album_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "music_video_count"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 136
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getLyricsTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getMvTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSpotifyPlaylistCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getPlaylistTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 128
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getArtistTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getAlbumTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 124
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getTrackTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->f:Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    return-object v1

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->c()Ljava/lang/Object;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    const-string v2, "_id"

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->g:I

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_4
    instance-of v2, v0, Lcom/samsung/android/app/music/model/base/TrackModel;

    if-eqz v2, :cond_5

    .line 153
    check-cast v0, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/base/TrackModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_5
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    if-eqz v2, :cond_6

    .line 155
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchAlbum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :cond_6
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    if-eqz v2, :cond_7

    .line 157
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchArtist;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchArtist;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_7
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    if-eqz v2, :cond_8

    .line 159
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchMusicVideo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_8
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    if-eqz v2, :cond_9

    .line 161
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_9
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    if-eqz v2, :cond_a

    .line 163
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_a
    instance-of v2, v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    if-eqz v2, :cond_b

    .line 165
    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_b
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    if-eqz v2, :cond_c

    .line 167
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :cond_c
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    if-eqz v2, :cond_d

    .line 169
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPreset;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_d
    instance-of v2, v0, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    if-eqz v2, :cond_e

    .line 171
    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchTrack;->getSimpleTrack()Lcom/samsung/android/app/music/model/base/TrackModel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/base/TrackModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_e
    instance-of v2, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;

    if-eqz v2, :cond_f

    const-string v2, "mime_type"

    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 174
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;

    iget-object p1, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;->a:Ljava/lang/String;

    return-object p1

    :cond_f
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x252e82cf -> :sswitch_7
        -0x1c759cc1 -> :sswitch_6
        -0x1bfdef9e -> :sswitch_5
        -0x184df3ac -> :sswitch_4
        0x3bdc217 -> :sswitch_3
        0x5d3552f -> :sswitch_2
        0x2f430c87 -> :sswitch_1
        0x5e56411b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMove(II)Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getCount()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d:I

    const/4 p1, 0x1

    return p1
.end method
