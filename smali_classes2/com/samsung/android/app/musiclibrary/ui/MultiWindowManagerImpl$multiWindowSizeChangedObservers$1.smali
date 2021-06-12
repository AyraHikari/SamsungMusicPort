.class public final Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;
.super Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers<",
        "Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->a:Ljava/util/List;

    const-string v1, "mObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;

    .line 54
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;->a(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/AbstractObservers;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl$multiWindowSizeChangedObservers$1;->a(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    return-void
.end method
