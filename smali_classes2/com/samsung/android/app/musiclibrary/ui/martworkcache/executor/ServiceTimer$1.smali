.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/Runnable;I)V

    :goto_0
    return-void
.end method
