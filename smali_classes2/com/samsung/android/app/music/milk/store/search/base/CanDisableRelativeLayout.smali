.class public Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/base/CanDisableRelativeLayout;->a:Z

    return-void
.end method
