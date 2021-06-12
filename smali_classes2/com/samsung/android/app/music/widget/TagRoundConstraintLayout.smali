.class public final Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$Companion;


# instance fields
.field private b:F

.field private c:Landroid/graphics/Path;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->a:Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(FFFFFF)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v11, p3

    move/from16 v12, p5

    move/from16 v13, p6

    const/4 v1, 0x0

    int-to-float v14, v1

    cmpg-float v1, v12, v14

    if-ltz v1, :cond_9

    cmpg-float v1, v13, v14

    if-gez v1, :cond_0

    goto/16 :goto_4

    .line 76
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v3, v2

    mul-float v15, v3, v12

    sub-float v8, v1, v15

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v16, v3, v13

    sub-float v7, v1, v16

    .line 79
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    add-float v1, p2, v13

    .line 80
    invoke-virtual {v6, v11, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->d:I

    and-int/2addr v1, v2

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    sub-float v2, v11, v15

    add-float v17, p2, v16

    const/16 v18, 0x0

    const/high16 v19, -0x3d4c0000    # -90.0f

    const/16 v20, 0x0

    move-object v1, v6

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, v17

    move-object/from16 v21, v6

    move/from16 v6, v18

    move/from16 v22, v7

    move/from16 v7, v19

    move v11, v8

    move/from16 v8, v20

    .line 84
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v8, v21

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v21, v6

    move/from16 v22, v7

    move v11, v8

    neg-float v1, v13

    move-object/from16 v8, v21

    const/4 v7, 0x0

    .line 86
    invoke-virtual {v8, v7, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v1, v12

    .line 87
    invoke-virtual {v8, v1, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    cmpl-float v17, v11, v14

    if-lez v17, :cond_2

    neg-float v1, v11

    .line 89
    invoke-virtual {v8, v1, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 92
    :cond_2
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    add-float v4, p1, v15

    add-float v5, p2, v16

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v18, -0x3d4c0000    # -90.0f

    const/16 v19, 0x0

    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v10, 0x0

    move/from16 v7, v18

    move-object v10, v8

    move/from16 v8, v19

    .line 93
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move/from16 v8, v22

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object v10, v8

    neg-float v1, v12

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 96
    invoke-virtual {v10, v2, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    move/from16 v8, v22

    :goto_1
    cmpl-float v14, v8, v14

    if-lez v14, :cond_4

    .line 98
    invoke-virtual {v10, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 101
    :cond_4
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    sub-float v3, p4, v16

    add-float v4, p1, v15

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/16 v18, 0x0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v5, p4

    move v9, v8

    move/from16 v8, v18

    .line 102
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    move v9, v8

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v10, v1, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 105
    invoke-virtual {v10, v12, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_2
    if-lez v17, :cond_6

    .line 107
    invoke-virtual {v10, v11, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 110
    :cond_6
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move/from16 v4, p3

    sub-float v2, v4, v15

    sub-float v3, p4, v16

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object v1, v10

    move/from16 v5, p4

    .line 111
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v10, v12, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v2, v13

    .line 114
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    if-lez v14, :cond_8

    neg-float v2, v9

    .line 116
    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 117
    :cond_8
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    return-object v10

    :cond_9
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private final a()V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->c:Landroid/graphics/Path;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->b:F

    iget v7, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->b:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->a(FFFFFF)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->c:Landroid/graphics/Path;

    :cond_0
    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "context.resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 67
    iput p1, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->b:F

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->e:Z

    return-void
.end method

.method private final b()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    check-cast v0, Landroid/graphics/Path;

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->c:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 29
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->d:I

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->e:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->a()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->c:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TagRoundConstraintLayout"

    const-string v1, "onDraw : clipPath not supported"

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->b()V

    .line 50
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/constraint/ConstraintLayout;->onSizeChanged(IIII)V

    return-void
.end method
