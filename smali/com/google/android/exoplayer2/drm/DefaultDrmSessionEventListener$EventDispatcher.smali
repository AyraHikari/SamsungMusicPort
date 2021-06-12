.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    .line 77
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    .line 78
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    .line 91
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    .line 92
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;Ljava/lang/Exception;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    .line 105
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    .line 106
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;

    .line 119
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->b:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    .line 120
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$HandlerAndListener;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
