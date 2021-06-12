.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExoMediaVideoSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 215
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->m()V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
