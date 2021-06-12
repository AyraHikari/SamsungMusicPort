.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoSurfaceVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->m()V

    .line 225
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    return-void
.end method
