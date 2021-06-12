.class public Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;",
        "Lcom/samsung/android/app/musiclibrary/ui/Refreshable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
            "TItem;+",
            "Lcom/samsung/android/app/music/model/base/ServerResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback<",
            "Lcom/samsung/android/app/music/model/base/ServerResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/util/List<",
            "TItem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory<",
            "TItem;>;",
            "Lcom/samsung/android/app/music/browse/list/data/PageDataSource<",
            "TItem;+",
            "Lcom/samsung/android/app/music/model/base/ServerResponse;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->b:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback<",
            "Lcom/samsung/android/app/music/model/base/ServerResponse;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 182
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->a(Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    .line 184
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh. isStarted - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isStarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isReset - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isReset()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAbandoned - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isAbandoned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->g()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->forceLoad()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->reset()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->startLoading()V

    :goto_0
    return-void
.end method

.method public cancelLoadInBackground()V
    .locals 3

    .line 111
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->cancelLoadInBackground()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "cancelled"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNext. page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasNext - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->forceLoad()V

    :cond_0
    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$OnDataLoaderCallback;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a()Z

    move-result v0

    return v0
.end method

.method public f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInBackground. page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    .line 78
    :cond_0
    :try_start_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a(Landroid/content/Context;IZ)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->e:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isLoadInBackgroundCanceled()Z

    move-result v1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isAbandoned()Z

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isReset()Z

    move-result v3

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadInBackground. cancel - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", abandon - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reset - "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->abandon()V

    .line 92
    invoke-static {v0}, Lio/reactivex/Single;->a(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;)V

    .line 93
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->f()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->b:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a:Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;->a(Ljava/util/List;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInBackground. page - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cursor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", abandon - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isAbandoned()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cancel - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isLoadInBackgroundCanceled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isReset - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->isReset()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onAbandon()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAbandon"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->onAbandon()V

    return-void
.end method

.method protected onCancelLoad()Z
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancelLoad"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onForceLoad"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->onForceLoad()V

    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->onReset()V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReset"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
