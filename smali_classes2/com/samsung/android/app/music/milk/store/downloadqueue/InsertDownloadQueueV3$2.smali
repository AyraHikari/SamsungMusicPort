.class Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a()V
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;)V

    invoke-static {p1, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

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

    .line 80
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
