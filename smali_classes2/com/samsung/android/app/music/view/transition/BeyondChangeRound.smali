.class public Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;
.super Lcom/samsung/android/app/music/view/transition/ChangeRound;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/view/transition/ChangeRound;-><init>(II)V

    .line 20
    iput-boolean p3, p0, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;->a:Z

    return-void
.end method

.method private a(Landroid/transition/TransitionValues;FF)Z
    .locals 3

    .line 25
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, " com.sec.android.app.music:changeRound:bound"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 26
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 27
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float v1, p2, p1

    mul-float v2, v0, p3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    div-float/2addr v0, p2

    goto :goto_0

    :cond_0
    div-float v0, p1, p3

    :goto_0
    sub-float p1, p2, p3

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v0

    const-string v0, "SMUSIC-BeyondChangeRound"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image size diff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method a(Landroid/transition/TransitionValues;)I
    .locals 3

    .line 44
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "com.sec.android.app.music:changeRound:imageSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 45
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 46
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 47
    iget-boolean v2, p0, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;->a:Z

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;->a(Landroid/transition/TransitionValues;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;)I

    move-result p1

    :goto_0
    return p1
.end method

.method b(Landroid/transition/TransitionValues;)I
    .locals 3

    .line 56
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "com.sec.android.app.music:changeRound:imageSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 57
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 58
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 59
    iget-boolean v2, p0, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;->a:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/view/transition/BeyondChangeRound;->a(Landroid/transition/TransitionValues;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Landroid/transition/TransitionValues;)I

    move-result p1

    :goto_0
    return p1
.end method
