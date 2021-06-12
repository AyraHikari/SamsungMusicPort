.class final Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;",
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

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;",
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

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UserHistoryApi"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get playhistoryList count ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;->a:Landroid/content/Context;

    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;->a:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a()Landroid/net/Uri;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    .line 69
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :goto_0
    const/4 p1, 0x0

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;-><init>(I)V

    .line 74
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

    .line 55
    check-cast p1, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;->a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
