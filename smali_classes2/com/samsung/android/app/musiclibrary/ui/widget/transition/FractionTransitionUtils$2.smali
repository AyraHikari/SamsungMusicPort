.class final Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;
.super Landroid/graphics/Matrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix can not be modified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postRotate(F)Z
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postRotate(FFF)Z
    .locals 0

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postScale(FF)Z
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postScale(FFFF)Z
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postSkew(FF)Z
    .locals 0

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postSkew(FFFF)Z
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public postTranslate(FF)Z
    .locals 0

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preRotate(F)Z
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preRotate(FFF)Z
    .locals 0

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preScale(FF)Z
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preScale(FFFF)Z
    .locals 0

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preSkew(FF)Z
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preSkew(FFFF)Z
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public preTranslate(FF)Z
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 0

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRotate(F)V
    .locals 0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setSkew(FF)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method

.method public setValues([F)V
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;->a()V

    return-void
.end method
