.class public final Lcom/google/android/youtube/player/internal/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer;


# instance fields
.field private a:Lcom/google/android/youtube/player/internal/b;

.field private b:Lcom/google/android/youtube/player/internal/d;


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->a(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->a:Lcom/google/android/youtube/player/internal/b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/b;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/google/android/youtube/player/internal/s;->a:Lcom/google/android/youtube/player/internal/b;

    invoke-interface {p1}, Lcom/google/android/youtube/player/internal/b;->a()V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->a(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {p2, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/d;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/d;->b(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {p2, p1}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/s;->b:Lcom/google/android/youtube/player/internal/d;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/d;->r()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/q;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/q;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
