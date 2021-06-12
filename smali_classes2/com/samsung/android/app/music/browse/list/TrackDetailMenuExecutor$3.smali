.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "[J",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([J)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    array-length v1, p1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    aget-wide v2, p1, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;J)J

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrack(J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "TrackDetailMenuExecutor"

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateView - audioIds isNull:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    array-length v0, p1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lio/reactivex/Observable;->b()Lio/reactivex/Observable;

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

    .line 110
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$3;->a([J)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
