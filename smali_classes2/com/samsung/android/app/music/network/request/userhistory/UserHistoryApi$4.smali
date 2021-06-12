.class final Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;",
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

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->b:Ljava/lang/String;

    .line 141
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->b:Ljava/lang/String;

    .line 145
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    .line 144
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_0
    const/4 p1, 0x0

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;-><init>(I)V

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

    .line 133
    check-cast p1, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;->a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
