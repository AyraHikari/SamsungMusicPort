.class final Lcom/samsung/android/app/music/background/cache/NUriLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

.field private c:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

.field private final d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

.field private final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
            "Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;",
            "-",
            "Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->e:Lkotlin/jvm/functions/Function2;

    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;->a()Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    .line 67
    new-instance p1, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;-><init>(Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->c:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 218
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoading for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unique uri\'s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const v2, 0x7f100087

    .line 61
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    .line 63
    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 0

    .line 72
    iget-object p3, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->c:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    .line 233
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Load image for client="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", remains "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " images"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->e:Lkotlin/jvm/functions/Function2;

    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    iget-object p3, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->c:Lcom/samsung/android/app/music/background/cache/NUriLoader$Result;

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;->a()Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->b:Lcom/samsung/android/app/music/background/cache/DiscoverBlurRequest;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 246
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/background/cache/DiscoverBlurBitmapCacheKt;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore old request for client: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/NUriLoader;->d:Lcom/samsung/android/app/music/background/cache/DiscoverBlurClient;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uri\'s was updated"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return p1
.end method
