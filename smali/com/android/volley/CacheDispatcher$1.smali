.class Lcom/android/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/CacheDispatcher;->a(Lcom/android/volley/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Request;

.field final synthetic b:Lcom/android/volley/CacheDispatcher;


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$1;->b:Lcom/android/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/android/volley/CacheDispatcher$1;->a:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher$1;->b:Lcom/android/volley/CacheDispatcher;

    invoke-static {v0}, Lcom/android/volley/CacheDispatcher;->a(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$1;->a:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
