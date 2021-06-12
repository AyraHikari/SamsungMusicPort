.class Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->d:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->c:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

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

    .line 133
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$2;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method
