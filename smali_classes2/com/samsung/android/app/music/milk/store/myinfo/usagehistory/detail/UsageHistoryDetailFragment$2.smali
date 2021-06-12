.class Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "UsageHistoryDetailFragment"

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Radio play history detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->g()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->c(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;->d(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    instance-of v0, p1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;

    if-eqz v0, :cond_0

    const-string v0, "UsageHistoryDetailFragment"

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Radio play history detail error["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;

    .line 304
    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 297
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$2;->a(Ljava/lang/Integer;)V

    return-void
.end method
