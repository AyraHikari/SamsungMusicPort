.class final Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;->a:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2$1;-><init>(Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;)V

    .line 69
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
