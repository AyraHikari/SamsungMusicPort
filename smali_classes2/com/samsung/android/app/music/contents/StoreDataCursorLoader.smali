.class public Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;
.super Landroid/support/v4/content/Loader;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/contents/Cursorable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private d:Landroid/database/Cursor;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "TT;>;",
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->b:Lcom/samsung/android/app/music/contents/Cursorable;

    .line 28
    new-instance p1, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->c:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->b(Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    iget-object v1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a(I)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->b:Lcom/samsung/android/app/music/contents/Cursorable;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/contents/Cursorable;->a(Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a(Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    if-eq p1, v1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->c:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onForceLoad()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->a(Landroid/database/Cursor;)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->d:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;->forceLoad()V

    :cond_2
    return-void
.end method
