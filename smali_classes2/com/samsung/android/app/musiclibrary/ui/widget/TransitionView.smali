.class public Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final m:Ljava/lang/String; = "TransitionView"


# instance fields
.field private a:Landroid/graphics/ColorFilter;

.field private final c:Landroid/widget/ImageView$ScaleType;

.field private d:Landroid/animation/Animator;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/Matrix;

.field private g:F

.field private h:F

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private final k:Z

.field private l:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;

    const-string v0, "TransitionView"

    .line 261
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/widget/ImageView$ScaleType;

    .line 32
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:Landroid/graphics/Matrix;

    .line 33
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 34
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:F

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

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
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V
    .locals 3

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    invoke-virtual {p3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    const/16 p3, 0xff

    int-to-float p3, p3

    mul-float p4, p4, p3

    float-to-int p3, p4

    .line 255
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 256
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2
.end method

.method private final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 6

    .line 148
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 153
    check-cast v3, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz p2, :cond_9

    .line 161
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 162
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getLayoutDirection()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 165
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    if-eqz v2, :cond_5

    .line 168
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-eqz v2, :cond_8

    .line 169
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-eqz v2, :cond_6

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 172
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 174
    :cond_7
    :goto_3
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-static {p2, p3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionViewKt;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    :cond_9
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-ne p3, v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 184
    :cond_a
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    const-string p2, "requestLayout 1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->requestLayout()V

    goto :goto_4

    .line 188
    :cond_b
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    const-string p2, "requestLayout 1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->requestLayout()V

    :cond_c
    :goto_4
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 246
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setColorFilter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Landroid/animation/Animator;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->d:Landroid/animation/Animator;

    return-void
.end method

.method private final a(ZZ)V
    .locals 3

    .line 129
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method private final a(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public static final getLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView$Companion;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getNextImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(ZZ)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    if-nez p1, :cond_0

    .line 218
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:F

    mul-float v2, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;F)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 119
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 121
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionViewKt;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 124
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionViewKt;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;IILandroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 114
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->g:F

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setColorFilter(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;ILandroid/graphics/PorterDuff$Mode;ILjava/lang/Object;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a:Landroid/graphics/ColorFilter;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    return-void
.end method

.method public final setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageDrawable drawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->e:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->i:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFraction(F)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 78
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->h:F

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    return-void
.end method

.method public final setNextImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 55
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextImageDrawable drawable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->j:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(I)Z

    move-result v0

    .line 85
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->m:Ljava/lang/String;

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

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 87
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->a(ZZ)V

    :cond_0
    return-void
.end method
