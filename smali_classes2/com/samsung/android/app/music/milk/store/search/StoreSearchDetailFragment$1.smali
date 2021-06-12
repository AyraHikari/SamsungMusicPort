.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Playable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l_()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Z)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 227
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
