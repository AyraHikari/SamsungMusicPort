.class public Luk/co/senab/photoview/gestures/EclairGestureDetector;
.super Luk/co/senab/photoview/gestures/CupcakeGestureDetector;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->g:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .locals 1

    .line 38
    :try_start_0
    iget v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 40
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method b(Landroid/view/MotionEvent;)F
    .locals 1

    .line 47
    :try_start_0
    iget v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->g:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 49
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 58
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Luk/co/senab/photoview/Compat;->a(I)I

    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 70
    iget v4, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->b:F

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->c:F

    goto :goto_1

    .line 62
    :cond_2
    :pswitch_1
    iput v2, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    .line 82
    :cond_3
    :goto_1
    iget v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    if-eq v0, v2, :cond_4

    iget v3, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->f:I

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 81
    iput v0, p0, Luk/co/senab/photoview/gestures/EclairGestureDetector;->g:I

    .line 84
    invoke-super {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
