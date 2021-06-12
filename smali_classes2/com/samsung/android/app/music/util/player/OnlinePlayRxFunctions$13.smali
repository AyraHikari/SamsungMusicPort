.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->c(Ljava/lang/String;)Lio/reactivex/functions/Function;
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
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->h:I

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->b:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    .line 361
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->shuffle()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d:Z

    .line 362
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getAd()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->f:Lcom/samsung/android/app/music/model/AdInfo;

    :cond_0
    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$13;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    move-result-object p1

    return-object p1
.end method
