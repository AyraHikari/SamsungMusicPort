.class public final Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TagRoundConstraintLayout.kt"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ktx/sesl/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$a;
    }
.end annotation


# static fields
.field public static final H:Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$a;


# instance fields
.field public D:F

.field public E:Landroid/graphics/Path;

.field public F:I

.field public G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->H:Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000d

    invoke-static {v0, v1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->F:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->y(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->G:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->w()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->E:Landroid/graphics/Path;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TagRoundConstraintLayout"

    const-string v1, "onDraw : clipPath not supported"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->z()V

    .line 2
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->E:Landroid/graphics/Path;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v7, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->D:F

    move-object v1, p0

    move v6, v7

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->x(FFFFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->E:Landroid/graphics/Path;

    :cond_0
    return-void
.end method

.method public final x(FFFFFF)Landroid/graphics/Path;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    const/4 v12, 0x0

    cmpg-float v1, v10, v12

    if-ltz v1, :cond_9

    cmpg-float v1, v11, v12

    if-gez v1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v3, v2

    mul-float v13, v3, v10

    sub-float v14, v1, v13

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v15, v3, v11

    sub-float v8, v1, v15

    .line 3
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    add-float v1, p2, v11

    .line 4
    invoke-virtual {v7, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->F:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    sub-float v2, v9, v13

    add-float v5, p2, v15

    const/4 v6, 0x0

    const/high16 v16, -0x3d4c0000    # -90.0f

    const/16 v17, 0x0

    move-object v1, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v18, v7

    move/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, v17

    .line 6
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    move-object/from16 v8, v18

    goto :goto_0

    :cond_1
    move-object/from16 v18, v7

    move/from16 v19, v8

    neg-float v1, v11

    move-object/from16 v8, v18

    .line 7
    invoke-virtual {v8, v12, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v1, v10

    .line 8
    invoke-virtual {v8, v1, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    cmpl-float v16, v14, v12

    if-lez v16, :cond_2

    neg-float v1, v14

    .line 9
    invoke-virtual {v8, v1, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 10
    :cond_2
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    add-float v4, p1, v13

    add-float v5, p2, v15

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/16 v17, 0x0

    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v9, v8

    move/from16 v8, v17

    .line 11
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_1

    :cond_3
    move-object v9, v8

    neg-float v1, v10

    .line 12
    invoke-virtual {v9, v1, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 13
    invoke-virtual {v9, v12, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_1
    move/from16 v8, v19

    cmpl-float v17, v8, v12

    if-lez v17, :cond_4

    .line 14
    invoke-virtual {v9, v12, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 15
    :cond_4
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->F:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    sub-float v3, p4, v15

    add-float v4, p1, v13

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/16 v18, 0x0

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v5, p4

    move/from16 v20, v8

    move/from16 v8, v18

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_2

    :cond_5
    move/from16 v20, v8

    .line 17
    invoke-virtual {v9, v12, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 18
    invoke-virtual {v9, v10, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_2
    if-lez v16, :cond_6

    .line 19
    invoke-virtual {v9, v14, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 20
    :cond_6
    iget v1, v0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->F:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    sub-float v2, p3, v13

    sub-float v3, p4, v15

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    move-object v1, v9

    move/from16 v4, p3

    move/from16 v5, p4

    .line 21
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v9, v10, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v1, v11

    .line 23
    invoke-virtual {v9, v12, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    if-lez v17, :cond_8

    move/from16 v1, v20

    neg-float v1, v1

    .line 24
    invoke-virtual {v9, v12, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 25
    :cond_8
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    return-object v9

    :cond_9
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public final y(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->D:F

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->G:Z

    return-void
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/TagRoundConstraintLayout;->E:Landroid/graphics/Path;

    return-void
.end method
