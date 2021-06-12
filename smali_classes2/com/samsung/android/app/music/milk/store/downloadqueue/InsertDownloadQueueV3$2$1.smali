.class Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;->getVerifiedTracks()Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "InsertDownloadQueueV3"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mp3 purchased track re : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "InsertDownloadQueueV3"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifiedTrack count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;

    const-string v1, "00"

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getStatusCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Landroid/content/Context;

    move-result-object v2

    .line 100
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackId()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "InsertDownloadQueueV3"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to query : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "InsertDownloadQueueV3"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/VerifiedTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    .line 117
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;)Landroid/content/Context;

    move-result-object v0

    .line 118
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->a([Ljava/lang/Long;)[J

    move-result-object p1

    .line 117
    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3;Landroid/content/Context;[J)I

    move-result p1

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueV3$2$1;->a(Ljava/lang/Integer;Lcom/samsung/android/app/music/model/purchase/VerifiedTrackInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
