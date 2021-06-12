.class final Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Ljava/lang/String;ZI)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lio/reactivex/ObservableSource;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnlinePlayRxFunctions"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRadio. result code not success. code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/samsung/android/app/music/network/exception/ServerResponseException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/network/exception/ServerResponseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g:[J

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g:[J

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 245
    iget v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a:I

    iget-object v2, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 246
    iget v0, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a:I

    :goto_0
    move v6, v0

    goto :goto_1

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    iget-object v0, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->e:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9$1;-><init>(Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v6, -0x1

    :goto_1
    const-string v0, "OnlinePlayRxFunctions"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRadio. playlistId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->g:[J

    iget-boolean v5, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->d:Z

    iget-boolean v7, p0, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->c:Z

    iget-object v8, p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;->f:Lcom/samsung/android/app/music/model/AdInfo;

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JZIZLcom/samsung/android/app/music/model/AdInfo;)V

    .line 263
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const-string p1, "OnlinePlayRxFunctions"

    const-string v0, "playRadio. audioIds null or length 0"

    .line 240
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance p1, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/NoTracksToPlayException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

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

    .line 229
    check-cast p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions$9;->a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
