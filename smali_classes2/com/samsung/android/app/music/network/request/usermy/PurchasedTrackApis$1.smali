.class final Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;",
            ")",
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

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PurchasedTrackApis"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get purchased drm tracks count ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], page["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;->b:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->toContentValuesArray(I)[Landroid/content/ContentValues;

    move-result-object v2

    .line 40
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    const-string v0, "Y"

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->getMoreYn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$PurchasedTrackException;

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$PurchasedTrackException;-><init>(I)V

    .line 49
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

    .line 32
    check-cast p1, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;->a(Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
