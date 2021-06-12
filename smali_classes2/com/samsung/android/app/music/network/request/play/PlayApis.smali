.class public final Lcom/samsung/android/app/music/network/request/play/PlayApis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayApis"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/PlayTransport;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/music/network/transport/PlayTransport;->a()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/PlayTransport;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/network/transport/PlayTransport;->a(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/PlayTransport;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->b:Ljava/lang/String;

    iget v3, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->c:I

    iget-object v4, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->d:Ljava/lang/String;

    iget v5, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->e:I

    iget-object v6, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->g:Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/app/music/network/request/play/PlayApis$SongRequestParams;->h:Ljava/lang/String;

    .line 23
    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/app/music/network/transport/PlayTransport;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/PlayTransport;

    move-result-object p0

    const-string v0, "@"

    .line 36
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/PlayTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
