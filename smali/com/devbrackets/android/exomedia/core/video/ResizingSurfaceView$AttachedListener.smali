.class Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachedListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$1;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 369
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 370
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    invoke-virtual {p1, p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 372
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
