.class public final Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->b:Landroid/os/Handler;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;)Landroid/support/v4/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    iget-object v0, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;)Landroid/support/v4/util/ArraySet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a(Ljava/util/List;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver$observerHandler$1;->a:Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;->a(Lcom/samsung/android/app/music/provider/sync/observer/DelayedContentObserver;)Landroid/support/v4/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/util/ArraySet;->clear()V

    return-void
.end method
