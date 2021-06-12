.class public Luk/co/senab/photoview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private a:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a(Luk/co/senab/photoview/PhotoViewAttacher;)V

    return-void
.end method


# virtual methods
.method public a(Luk/co/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 32
    iput-object p1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 74
    :try_start_0
    iget-object v1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 78
    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->e()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 79
    iget-object v1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->e()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFFZ)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->e()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->f()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 81
    iget-object v1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->f()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFFZ)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v3, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->d()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 37
    iget-object v0, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 42
    iget-object v2, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher;->h()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher;->b()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    iget p1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p1

    .line 52
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    .line 53
    iget p1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p1

    .line 54
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v4, p1

    .line 56
    iget-object p1, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->h()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object p1

    invoke-interface {p1, v0, v3, v4}, Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;->a(Landroid/view/View;FF)V

    const/4 p1, 0x1

    return p1

    .line 61
    :cond_1
    iget-object v2, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher;->i()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Luk/co/senab/photoview/PhotoViewAttacher;->i()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v2, v0, v3, p1}, Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;->a(Landroid/view/View;FF)V

    :cond_2
    return v1
.end method
