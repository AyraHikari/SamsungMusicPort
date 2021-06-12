.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->d()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lio/reactivex/subjects/PublishSubject;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lio/reactivex/subjects/PublishSubject;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->b:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 378
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;

    .line 379
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->c:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    check-cast p2, Landroid/app/Activity;

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v0

    const/4 v1, 0x0

    .line 378
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JZ)V

    .line 383
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "DownloadBasketActivity"

    const-string p2, "checkUnAvailableItem on next"

    .line 384
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->b:Lio/reactivex/subjects/PublishSubject;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 387
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$checkUnAvailableItem$$inlined$use$lambda$1;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    return-void
.end method
