.class public Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/Expandable;


# instance fields
.field private a:I


# direct methods
.method private a(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a(ZZZ)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 88
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a:I

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->requestLayout()V

    return-void
.end method

.method private setExpanded(Z)V
    .locals 1

    .line 68
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a(ZZ)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a:I

    return-void
.end method

.method getPendingAction()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a:I

    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method
