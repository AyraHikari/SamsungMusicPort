.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Ljava/lang/String;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 173
    iget v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    if-eqz v0, :cond_0

    goto :goto_2

    .line 180
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->d:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;)V

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v0

    const-string v2, "OnlinePlayRxFunctions"

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTrackListInfoFunc. position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 200
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    iget-object v2, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a([JILjava/lang/String;Z)V

    .line 201
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-string p1, "OnlinePlayRxFunctions"

    const-string v0, "playTrackListInfoFunc. audioIds is null or length 0"

    .line 181
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_3

    .line 174
    :cond_6
    iget p1, p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    :goto_3
    const-string v0, "OnlinePlayRxFunctions"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTrackListInfoFunc. not success. code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    const-string v1, "trackListInfo null or code not success"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 169
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$6;->a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
