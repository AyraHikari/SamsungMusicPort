.class Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;
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

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;->b:Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/bixby/v2/util/StoreExecutorUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

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

    .line 124
    check-cast p1, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/store/PlayChartExecutor$2$1;->a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    move-result-object p1

    return-object p1
.end method
