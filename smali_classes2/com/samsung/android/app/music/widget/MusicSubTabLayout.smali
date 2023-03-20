.class public Lcom/samsung/android/app/music/widget/MusicSubTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "MusicSubTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;
    }
.end annotation


# instance fields
.field public A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

.field public final B0:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/widget/TextView;",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public C0:Ljava/lang/Runnable;

.field public y0:Landroidx/viewpager/widget/ViewPager;

.field public z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    .line 4
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->q(Lcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSubTabLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r0(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->s0()V

    return-void
.end method


# virtual methods
.method public k0(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->k0(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    const-string p1, "MusicSubTabLayout"

    const-string p2, "setupWithViewPager"

    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/tabs/TabLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->w0()V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->v0()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    .line 2
    invoke-virtual {p1}, Landroidx/customview/view/a;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState. ss - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;->c:I

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState. ss - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final s0()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->z0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    const-string v1, "MusicSubTabLayout"

    if-gtz v0, :cond_1

    const-string v0, "applyTabScrollModeIfTabItemEllipsis. not measured yet"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "applyTabScrollModeIfTabItemEllipsis. already scrollable"

    .line 5
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->t0()V

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->f()I

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "applyTabScrollModeIfTabItemEllipsis. tab count is zero"

    .line 10
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_8

    .line 11
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->P(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 12
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->f(Lcom/google/android/material/tabs/TabLayout$g;)Landroid/widget/TextView;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    .line 14
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->f(Lcom/google/android/material/tabs/TabLayout$g;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    if-nez v7, :cond_6

    .line 15
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->f(Lcom/google/android/material/tabs/TabLayout$g;)Landroid/widget/TextView;

    move-result-object v7

    .line 16
    new-instance v8, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$a;

    invoke-direct {v8, p0, v6}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$a;-><init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 17
    iget-object v9, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v10

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyTabScrollModeIfTabItemEllipsis. tabPos - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$g;->o()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", observe tab size - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {v1, v9}, Lcom/samsung/android/app/music/milk/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    :cond_6
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->f(Lcom/google/android/material/tabs/TabLayout$g;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/util/r;->P(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyTabScrollModeIfTabItemEllipsis. width - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", left - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", right - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tabCount - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ellipsisCount - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_9

    .line 28
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->t0()V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->u0()V

    .line 31
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setClipToPadding(Z)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string v0, "applyTabScrollModeIfTabItemEllipsis. view pager is null"

    .line 32
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->x0(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSubTabSelectedIndicatorColor(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ktx/sesl/f;->p(Lcom/google/android/material/tabs/TabLayout;I)V

    return-void
.end method

.method public final t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPreDrawCallbacks. clear size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicSubTabLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->B0:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final u0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingStart()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingEnd()I

    move-result v2

    .line 4
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v1, v3

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/HorizontalScrollView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final v0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSavedState. pending state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    iget v1, v1, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;->c:I

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->f()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSavedState. tab count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", selected tab pos - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->A0:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$c;

    :cond_1
    return-void
.end method

.method public final w0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->z0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->C0:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$b;-><init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->C0:Ljava/lang/Runnable;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->C0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->C0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public x0(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p2, 0x3ebd70a4    # 0.37f

    .line 5
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final y0()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->y0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/a;->h(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v5, v7, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/q;->j(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string v0, "MusicSubTabLayout"

    const-string v1, "updateTts. view pager or  tabStrip is null"

    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
