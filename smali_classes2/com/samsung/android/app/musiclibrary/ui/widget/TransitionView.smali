.class public Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
.super Landroid/view/View;
.source "TransitionView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;
    }
.end annotation


# static fields
.field public static final q:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;

.field public static final r:Ljava/lang/String;


# instance fields
.field public a:Landroid/graphics/ColorFilter;

.field public final b:Landroid/widget/ImageView$ScaleType;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public e:F

.field public f:F

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public final o:Z

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->q:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;

    const-string v0, "TransitionView"

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Landroid/widget/ImageView$ScaleType;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/graphics/Matrix;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x18

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setColorFilter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->q:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    const/16 p3, 0xff

    int-to-float p3, p3

    mul-float/2addr p4, p3

    float-to-int p3, p4

    .line 5
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2
.end method

.method public final c(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDrawable old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    .line 2
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "hide old: "

    .line 5
    invoke-static {v4, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    goto :goto_4

    .line 7
    :cond_3
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    if-eqz v3, :cond_5

    .line 11
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-eqz v3, :cond_8

    .line 12
    :cond_5
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    :goto_2
    move v2, v1

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "show new: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 18
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-static {p2, p3, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/b0;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    :goto_4
    const-string p3, "requestLayout 1"

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-eq p1, p2, :cond_b

    .line 21
    :cond_9
    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_5

    .line 23
    :cond_a
    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    :goto_5
    return-void
.end method

.method public final g(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDrawableVisibility visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " restart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_1
    return-void
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getNextImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g(ZZ)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g(ZZ)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getNextImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V

    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/b0;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/b0;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    :goto_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g(ZZ)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:F

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->p:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setColorFilter(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a:Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    const-string v1, "setImageDrawable drawable: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setNextImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    const-string v1, "setNextImageDrawable drawable: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c(I)Z

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->r:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisibility visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " it mean: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g(ZZ)V

    :cond_0
    return-void
.end method
