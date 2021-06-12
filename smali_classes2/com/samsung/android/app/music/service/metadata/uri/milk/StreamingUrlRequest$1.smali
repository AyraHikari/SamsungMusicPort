.class Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/music/model/TrackListInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->a:Z

    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;Lcom/samsung/android/app/music/model/UserInfo;)Lcom/samsung/android/app/music/model/UserInfo;

    .line 117
    new-instance v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    .line 119
    invoke-static {v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/model/AudioQuality;->createAudioQuality(I)Lcom/samsung/android/app/music/model/AudioQuality;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/AudioQuality;->getBitrate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/AudioQuality;->getCodec()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->b:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v5, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->a:Z

    invoke-static {v1, v2, v3, v5}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->a(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;ZZZ)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->c:I

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->d:Ljava/lang/String;

    .line 126
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->a:Z

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    :cond_1
    iput v4, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->e:I

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->g:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAdultCertified()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->b(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_1

    :cond_2
    const-string p1, "0"

    :goto_1
    iput-object p1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->h:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "PLAY-QUEUE"

    :goto_2
    iput-object p1, v0, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->f:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->d:Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;->c(Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/request/play/PlayApis;->a(Landroid/content/Context;Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
