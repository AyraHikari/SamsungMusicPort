.class public Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Landroid/transition/PathMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:parent"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->a:[Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->b:Landroid/util/Property;

    .line 49
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->c:Landroid/util/Property;

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->d:Landroid/util/Property;

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->e:Landroid/util/Property;

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->f:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 113
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a:Landroid/transition/PathMotion;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    return-void
.end method

.method private a(Landroid/transition/TransitionValues;)V
    .locals 7

    .line 124
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:parent"

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_10

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 149
    :cond_0
    iget-object v4, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 150
    iget-object v5, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:changeBounds:parent"

    .line 151
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string v6, "android:changeBounds:parent"

    .line 152
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 156
    :cond_1
    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 157
    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 158
    iget-object v2, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 159
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 160
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 161
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 162
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 163
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 164
    iget v10, v2, Landroid/graphics/Rect;->right:I

    .line 165
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 166
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v9, v5

    sub-int v12, v1, v7

    sub-int v13, v10, v6

    sub-int v14, v2, v8

    if-eqz v11, :cond_2

    if-nez v12, :cond_3

    :cond_2
    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    :cond_3
    if-ne v5, v6, :cond_5

    if-eq v7, v8, :cond_4

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x1

    :goto_1
    if-ne v9, v10, :cond_7

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v15, v16

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    :goto_4
    if-lez v15, :cond_e

    .line 185
    invoke-static {v4, v5, v7, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/View;IIII)V

    const/4 v3, 0x2

    if-ne v15, v3, :cond_a

    if-ne v11, v13, :cond_9

    if-ne v12, v14, :cond_9

    .line 188
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    int-to-float v2, v5

    int-to-float v3, v7

    int-to-float v5, v6

    int-to-float v6, v8

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->f:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v4, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_6

    .line 191
    :cond_9
    new-instance v11, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;

    invoke-direct {v11, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 192
    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    int-to-float v5, v5

    int-to-float v7, v7

    int-to-float v6, v6

    int-to-float v8, v8

    invoke-virtual {v12, v5, v7, v6, v8}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    .line 193
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->b:Landroid/util/Property;

    const/4 v7, 0x0

    .line 194
    invoke-static {v11, v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 196
    iget-object v6, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    int-to-float v8, v9

    int-to-float v1, v1

    int-to-float v9, v10

    int-to-float v2, v2

    .line 197
    invoke-virtual {v6, v8, v1, v9, v2}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->c:Landroid/util/Property;

    .line 199
    invoke-static {v11, v2, v7, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 200
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 201
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 203
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;

    invoke-direct {v1, v0, v11}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v2

    goto :goto_6

    :cond_a
    if-ne v5, v6, :cond_c

    if-eq v7, v8, :cond_b

    goto :goto_5

    .line 213
    :cond_b
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    int-to-float v5, v9

    int-to-float v1, v1

    int-to-float v6, v10

    int-to-float v2, v2

    .line 214
    invoke-virtual {v3, v5, v1, v6, v2}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 215
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->d:Landroid/util/Property;

    const/4 v3, 0x0

    invoke-static {v4, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v3, 0x0

    .line 210
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->g:Landroid/transition/PathMotion;

    int-to-float v2, v5

    int-to-float v5, v7

    int-to-float v6, v6

    int-to-float v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 211
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->e:Landroid/util/Property;

    invoke-static {v4, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 218
    :goto_6
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_d

    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 220
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/ViewGroup;Z)V

    .line 221
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;Landroid/view/ViewGroup;)V

    .line 244
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    return-object v1

    :cond_f
    :goto_7
    const/4 v1, 0x0

    return-object v1

    :cond_10
    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;->a:[Ljava/lang/String;

    return-object v0
.end method
