.class public final Lcom/google/android/youtube/player/YouTubePlayerView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/YouTubePlayerView$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/youtube/player/YouTubePlayerView$a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/youtube/player/internal/s;

.field private d:Landroid/view/View;

.field private e:Lcom/google/android/youtube/player/internal/n;

.field private f:Landroid/os/Bundle;

.field private g:Z


# direct methods
.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->e:Lcom/google/android/youtube/player/internal/n;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No views can be added on top of the player"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/google/android/youtube/player/YouTubePlayerView;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->a()V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V

    :cond_0
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->b()V

    :cond_0
    return-void
.end method

.method final b(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->g:Z

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->a(Z)V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->c()V

    :cond_0
    return-void
.end method

.method public final clearChildFocus(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->requestFocus()Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    return-void
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->d()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/google/android/youtube/player/internal/s;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/google/android/youtube/player/internal/s;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method final e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->f:Landroid/os/Bundle;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/s;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->a:Lcom/google/android/youtube/player/YouTubePlayerView$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->c:Lcom/google/android/youtube/player/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/internal/s;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->a:Lcom/google/android/youtube/player/YouTubePlayerView$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/player/YouTubePlayerView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/youtube/player/YouTubePlayerView;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method
