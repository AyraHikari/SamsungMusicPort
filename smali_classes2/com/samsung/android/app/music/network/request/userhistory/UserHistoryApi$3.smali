.class final Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;)Lio/reactivex/Observable;
    .locals 4
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

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getResultCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->a:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UserHistoryApi"

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFreeRadioPlayHistoryApi skip data : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->c:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getLatestUpdateDate()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->d:Ljava/lang/String;

    .line 113
    invoke-static {v2}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->d:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object p1

    .line 117
    invoke-static {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 121
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 123
    :cond_2
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

    .line 99
    check-cast p1, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;->a(Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
