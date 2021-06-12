.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;I)V

    .line 106
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
