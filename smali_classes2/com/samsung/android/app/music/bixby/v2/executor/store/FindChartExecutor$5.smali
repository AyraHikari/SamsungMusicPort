.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$5;->a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

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

    .line 149
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$5;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
