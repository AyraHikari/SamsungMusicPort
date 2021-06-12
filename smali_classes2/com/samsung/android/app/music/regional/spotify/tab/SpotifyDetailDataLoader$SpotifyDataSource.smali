.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;
.super Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpotifyDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->b:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->c:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
            ">;",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->c:Ljava/lang/String;

    iput-object v0, p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->m:Ljava/lang/String;

    .line 181
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "SpotifyDetailDataLoader"

    const-string p2, "artistName or trackTitle is null"

    .line 174
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x53fd20b9

    if-eq v0, v1, :cond_2

    const v1, 0x5897e6f

    if-eq v0, v1, :cond_1

    const v1, 0x700681d2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playlist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "album"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 146
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid type - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->b(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;)V

    .line 133
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 119
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a:Ljava/lang/String;

    .line 120
    invoke-interface {p1, p2, v1, v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;)V

    .line 121
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;)V

    .line 109
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/samsung/android/app/music/model/base/ServerResponse;)Ljava/util/List;
    .locals 0

    .line 88
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x53fd20b9

    if-eq v2, v3, :cond_2

    const v3, 0x5897e6f

    if-eq v2, v3, :cond_1

    const v3, 0x700681d2

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "playlist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "artist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 164
    :pswitch_0
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->c(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    .line 165
    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a(Ljava/util/List;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;)V

    goto :goto_2

    .line 159
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPlaylistTrack;

    .line 160
    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPlaylistTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a(Ljava/util/List;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;)V

    goto :goto_3

    .line 154
    :pswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;

    .line 155
    invoke-static {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a(Ljava/util/List;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyTrack;)V

    goto :goto_4

    :cond_4
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
