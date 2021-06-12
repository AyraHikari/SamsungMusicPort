.class Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;
.super Lio/reactivex/observers/DisposableObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 3

    const-string v0, "UiList"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " getPlayHistory()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->g()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;->a(Ljava/lang/Integer;)V

    return-void
.end method
