.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 352
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {p1, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 357
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 358
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->h()V

    return-void
.end method
