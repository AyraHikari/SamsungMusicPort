.class public Luk/co/senab/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/co/senab/photoview/gestures/GestureDetector;


# instance fields
.field protected a:Luk/co/senab/photoview/gestures/OnGestureListener;

.field b:F

.field c:F

.field final d:F

.field final e:F

.field private f:Landroid/view/VelocityTracker;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->e:F

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->d:F

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;)F
    .locals 0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public a(Luk/co/senab/photoview/gestures/OnGestureListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a:Luk/co/senab/photoview/gestures/OnGestureListener;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b(Landroid/view/MotionEvent;)F
    .locals 0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 107
    :pswitch_0
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 108
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 109
    iput-object v2, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 83
    :pswitch_1
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 84
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result v2

    .line 85
    iget v4, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b:F

    sub-float v4, v0, v4

    iget v5, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c:F

    sub-float v5, v2, v5

    .line 87
    iget-boolean v6, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    if-nez v6, :cond_1

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 90
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->d:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    .line 93
    :cond_1
    iget-boolean v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    if-eqz v1, :cond_4

    .line 94
    iget-object v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a:Luk/co/senab/photoview/gestures/OnGestureListener;

    invoke-interface {v1, v4, v5}, Luk/co/senab/photoview/gestures/OnGestureListener;->a(FF)V

    .line 95
    iput v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b:F

    .line 96
    iput v2, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c:F

    .line 98
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 115
    :pswitch_2
    iget-boolean v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b:F

    .line 118
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c:F

    .line 121
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 124
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    .line 125
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 129
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->e:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2

    .line 130
    iget-object v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a:Luk/co/senab/photoview/gestures/OnGestureListener;

    iget v4, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b:F

    iget v5, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v1, v4, v5, p1, v0}, Luk/co/senab/photoview/gestures/OnGestureListener;->a(FFFF)V

    .line 137
    :cond_2
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 138
    iget-object p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 139
    iput-object v2, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 69
    :pswitch_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    .line 70
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v2, "CupcakeGestureDetector"

    const-string v4, "Velocity tracker is null"

    invoke-interface {v0, v2, v4}, Luk/co/senab/photoview/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b:F

    .line 77
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->c:F

    .line 78
    iput-boolean v1, p0, Luk/co/senab/photoview/gestures/CupcakeGestureDetector;->g:Z

    :cond_4
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
