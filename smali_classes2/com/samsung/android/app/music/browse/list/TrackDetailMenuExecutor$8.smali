.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->h()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "[J>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "[J>;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromTrackInfoModel(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    .line 351
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    move-result-object v0

    .line 352
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$8;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
