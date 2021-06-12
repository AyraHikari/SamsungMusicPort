.class Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachedListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 383
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->f:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 386
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    invoke-virtual {p1, p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 388
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;->a:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
