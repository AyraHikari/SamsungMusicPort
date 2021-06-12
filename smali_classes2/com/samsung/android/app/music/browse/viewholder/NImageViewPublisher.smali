.class public final Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewType:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;"
    }
.end annotation


# instance fields
.field private final a:[Landroid/net/Uri;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TViewType;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "TViewType;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:J

.field private final h:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewType;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TViewType;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;[Landroid/net/Uri;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;[",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "+TViewType;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TViewType;-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPublish"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->h:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->i:Lkotlin/jvm/functions/Function2;

    .line 35
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p4, "java.util.Arrays.copyOf(this, size)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a:[Landroid/net/Uri;

    .line 37
    move-object p1, p3

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b:Ljava/util/List;

    .line 39
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v0, p2

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p4, Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->d:Ljava/util/Map;

    .line 43
    new-instance p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->f:Landroid/os/Handler;

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    const-string v0, "Looper.getMainLooper()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p4

    const-string v0, "Looper.getMainLooper().thread"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->g:J

    .line 50
    array-length p4, p2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne p4, v0, :cond_4

    .line 52
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 53
    invoke-virtual {p4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 56
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 57
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast p3, Ljava/util/List;

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uris size should be equal to publishViews size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a()V
    .locals 4

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher$threadPublish$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher$threadPublish$1;-><init>(Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b()V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    .line 71
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final b(Z)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x8

    :goto_0
    return p1

    .line 77
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final b()V
    .locals 10

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a(Z)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a:[Landroid/net/Uri;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 102
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 103
    check-cast v4, Ljava/lang/Iterable;

    .line 119
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 104
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 120
    :goto_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 106
    iget-object v9, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->i:Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v8, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 0

    if-eqz p2, :cond_1

    .line 82
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->e:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p3, Ljava/util/Map;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a()V

    :cond_2
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->a(Z)V

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 123
    instance-of p2, p1, Ljava/util/Collection;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/browse/viewholder/NImageViewPublisher;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_2
    :goto_0
    return p3
.end method
