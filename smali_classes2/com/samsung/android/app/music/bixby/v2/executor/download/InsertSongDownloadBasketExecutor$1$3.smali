.class Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getVerifiedTracks()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "Can not find the information of verity track"

    .line 119
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_2"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor;Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "InsertSongDownloadBasketExecutor"

    const-string p2, "this song is not purchasable"

    .line 126
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string p2, "Music_14_3"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 133
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const-string v1, "Music_14_6"

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    const-string p2, "resultCount"

    const/4 v1, 0x1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;

    invoke-direct {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;-><init>()V

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->e:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->c:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->b:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->f:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->a:Ljava/lang/String;

    const-string p1, "Store"

    .line 145
    iput-object p1, p2, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->h:Ljava/lang/String;

    const-string p1, "trackData"

    .line 148
    invoke-virtual {p2}, Lcom/samsung/android/app/music/bixby/v2/result/data/TrackData;->i()Lorg/json/JSONObject;

    move-result-object p2

    .line 147
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    check-cast p2, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/download/InsertSongDownloadBasketExecutor$1$3;->a(Lcom/samsung/android/app/music/model/UserInfo;Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method
