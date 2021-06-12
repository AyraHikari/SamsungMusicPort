.class final Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->g(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getResultCode()I

    move-result v1

    .line 389
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$5;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;

    move-result-object p1

    return-object p1
.end method
