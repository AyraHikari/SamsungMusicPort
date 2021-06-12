.class final Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;",
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

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->getResultCode()I

    move-result v0

    const-string v1, "HiddenTrackApis"

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHiddenTrack response code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->getResultCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "HiddenTrackApis"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get getHiddenTrack count ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->getTrackList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;->a:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$HiddenTrack;->a()Landroid/net/Uri;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    .line 43
    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;->a:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$HiddenTrack;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 25
    check-cast p1, Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;->a(Lcom/samsung/android/app/music/model/milkhistory/HiddenTracksModel;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
