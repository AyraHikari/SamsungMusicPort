.class Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;",
        "Lio/reactivex/Observable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4;->a:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;)[J

    .line 128
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 122
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/FindChartExecutor$4$1;->a(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
