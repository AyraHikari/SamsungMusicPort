.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->e()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    :cond_1
    :goto_0
    return-void
.end method
