.class Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalLayoutMatrixListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->d:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->b()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
