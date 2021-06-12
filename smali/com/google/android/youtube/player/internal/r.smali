.class public abstract Lcom/google/android/youtube/player/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/internal/r$d;,
        Lcom/google/android/youtube/player/internal/r$c;,
        Lcom/google/android/youtube/player/internal/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/player/internal/t;"
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private c:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/youtube/player/internal/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/youtube/player/internal/r$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/ServiceConnection;

.field private h:Z


# direct methods
.method static synthetic a(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .locals 0

    invoke-static {p0}, Lcom/google/android/youtube/player/internal/r;->b(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/youtube/player/internal/r;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/youtube/player/internal/r;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->UNKNOWN_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    return-object p0

    :catch_1
    sget-object p0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->UNKNOWN_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "YouTubeClient"

    const-string v2, "Unexpected error from unbindService()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->g:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->h:Z

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/player/internal/r$b;

    invoke-virtual {v3}, Lcom/google/android/youtube/player/internal/r$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/r;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final b()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->e:Z

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-boolean v5, p0, Lcom/google/android/youtube/player/internal/r;->h:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/player/internal/t$a;

    invoke-interface {v5}, Lcom/google/android/youtube/player/internal/t$a;->a()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/youtube/player/internal/r;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
