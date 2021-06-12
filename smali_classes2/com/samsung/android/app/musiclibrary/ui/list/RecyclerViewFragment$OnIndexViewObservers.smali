.class final Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnIndexViewObservers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1313
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->a:Ljava/util/List;

    const-string v1, "mObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1487
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    .line 1315
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
