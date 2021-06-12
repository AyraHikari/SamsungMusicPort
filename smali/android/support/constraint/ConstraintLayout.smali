.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final DEBUG:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.2"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMetrics:Landroid/support/constraint/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 561
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 504
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, 0x3

    .line 508
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 v1, -0x1

    .line 511
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 562
    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 566
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 490
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    .line 504
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, 0x3

    .line 508
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 567
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 490
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 500
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 502
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 503
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    const p3, 0x7fffffff

    .line 504
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 505
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    const/4 p3, 0x1

    .line 507
    iput-boolean p3, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 p3, 0x3

    .line 508
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/4 p3, 0x0

    .line 509
    iput-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    const/4 p3, -0x1

    .line 511
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 513
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 516
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 517
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 518
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 519
    iput p3, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 520
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 521
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 572
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    if-nez p1, :cond_0

    .line 1123
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    .line 1125
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-ne p1, p0, :cond_1

    .line 1127
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 1129
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 586
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz p1, :cond_7

    .line 590
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 593
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 594
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 595
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    .line 596
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 597
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    .line 598
    :cond_1
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 599
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    .line 600
    :cond_2
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 601
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    .line 602
    :cond_3
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 603
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    .line 604
    :cond_4
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_5

    .line 605
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 607
    :try_start_0
    new-instance v5, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v5}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 608
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 610
    :catch_0
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 612
    :goto_1
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 617
    :cond_7
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_12

    .line 1151
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1152
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_a

    .line 1155
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1156
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1157
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_11

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_1

    goto/16 :goto_a

    .line 1160
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1162
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1163
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1167
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v15, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v14, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v15, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v14, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_e

    const/4 v13, -0x2

    if-nez v11, :cond_5

    .line 1185
    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    if-ne v11, v14, :cond_6

    .line 1189
    invoke-static {v1, v4, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v6, v16

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    if-ne v11, v13, :cond_7

    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    .line 1195
    :goto_3
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v6, v17

    :goto_4
    if-nez v12, :cond_8

    .line 1199
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x1

    goto :goto_6

    :cond_8
    if-ne v12, v14, :cond_9

    .line 1203
    invoke-static {v2, v3, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_6

    :cond_9
    if-ne v12, v13, :cond_a

    const/16 v17, 0x1

    goto :goto_5

    :cond_a
    const/16 v17, 0x0

    .line 1209
    :goto_5
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v15, v18

    .line 1212
    :goto_6
    invoke-virtual {v8, v6, v15}, Landroid/view/View;->measure(II)V

    .line 1213
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_b

    .line 1214
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v14, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v19, 0x1

    add-long v14, v14, v19

    iput-wide v14, v6, Landroid/support/constraint/solver/Metrics;->measures:J

    :cond_b
    if-ne v11, v13, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    .line 1217
    :goto_7
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v12, v13, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    .line 1218
    :goto_8
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1219
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1220
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1223
    :goto_9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1224
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v16, :cond_f

    .line 1227
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_f
    if-eqz v17, :cond_10

    .line 1230
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1233
    :cond_10
    iget-boolean v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_11

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_11

    .line 1236
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :cond_11
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method private internalMeasureDimensions(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const-wide/16 v8, 0x1

    const/16 v10, 0x8

    const/4 v12, -0x2

    if-ge v7, v5, :cond_e

    .line 1273
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1274
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v10, :cond_1

    :cond_0
    :goto_1
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1277
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1278
    iget-object v15, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1279
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v6, :cond_0

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1284
    iget v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1285
    iget v13, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v6, :cond_c

    if-nez v13, :cond_3

    goto/16 :goto_7

    :cond_3
    if-ne v6, v12, :cond_4

    const/16 v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    .line 1301
    :goto_2
    invoke-static {v1, v4, v6}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v11

    if-ne v13, v12, :cond_5

    const/16 v17, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    .line 1306
    :goto_3
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v12

    .line 1308
    invoke-virtual {v14, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1309
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v11, :cond_6

    .line 1310
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v18, v3

    iget-wide v2, v11, Landroid/support/constraint/solver/Metrics;->measures:J

    add-long/2addr v2, v8

    iput-wide v2, v11, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_4

    :cond_6
    move/from16 v18, v3

    :goto_4
    const/4 v2, -0x2

    if-ne v6, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 1313
    :goto_5
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v13, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 1314
    :goto_6
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1315
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1316
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1318
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1319
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v16, :cond_9

    .line 1322
    invoke-virtual {v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_9
    if-eqz v17, :cond_a

    .line 1325
    invoke-virtual {v15, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1328
    :cond_a
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_b

    .line 1329
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    .line 1331
    invoke-virtual {v15, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1335
    :cond_b
    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v6, :cond_d

    iget-boolean v6, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v6, :cond_d

    .line 1336
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1337
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_8

    :cond_c
    :goto_7
    move/from16 v18, v3

    .line 1288
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    .line 1289
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_d
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v18

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_e
    move/from16 v18, v3

    .line 1342
    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v5, :cond_2b

    .line 1345
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1346
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_10

    :cond_f
    :goto_a
    move/from16 v22, v2

    move/from16 v21, v5

    move-wide/from16 v19, v8

    move/from16 v9, v18

    const/4 v3, -0x1

    move/from16 v8, p2

    const/4 v13, -0x2

    goto/16 :goto_1b

    .line 1349
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1350
    iget-object v7, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1351
    iget-boolean v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_f

    iget-boolean v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_11

    goto :goto_a

    .line 1354
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1356
    iget v11, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1357
    iget v12, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v11, :cond_12

    if-eqz v12, :cond_12

    goto :goto_a

    .line 1363
    :cond_12
    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 1364
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v14

    .line 1365
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1366
    invoke-virtual {v7, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    .line 1367
    :goto_b
    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    .line 1368
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    .line 1369
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-eqz v9, :cond_14

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1370
    invoke-virtual {v7, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    goto :goto_c

    :cond_14
    const/4 v9, 0x0

    :goto_c
    if-nez v11, :cond_15

    if-nez v12, :cond_15

    if-eqz v15, :cond_15

    if-eqz v9, :cond_15

    move/from16 v22, v2

    move/from16 v21, v5

    move/from16 v9, v18

    const/4 v3, -0x1

    move/from16 v8, p2

    const/4 v13, -0x2

    const-wide/16 v19, 0x1

    goto/16 :goto_1b

    :cond_15
    move/from16 v21, v5

    .line 1378
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    move/from16 v22, v2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    .line 1379
    :goto_d
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    move-object/from16 v23, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_17

    const/4 v6, 0x1

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    if-nez v2, :cond_18

    .line 1385
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_18
    if-nez v6, :cond_19

    .line 1388
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->invalidate()V

    :cond_19
    if-nez v11, :cond_1b

    if-eqz v2, :cond_1a

    .line 1391
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadWidth()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz v15, :cond_1a

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1392
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v5

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v11

    sub-float/2addr v5, v11

    float-to-int v11, v5

    .line 1393
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    .line 1394
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    move v13, v5

    goto :goto_f

    :cond_1a
    const/4 v5, -0x2

    .line 1397
    invoke-static {v1, v4, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    move v13, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_11

    :cond_1b
    const/4 v5, -0x2

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1c

    .line 1403
    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    move v13, v14

    :goto_f
    const/4 v5, 0x0

    goto :goto_11

    :cond_1c
    if-ne v11, v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    .line 1409
    :goto_10
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v13

    :goto_11
    if-nez v12, :cond_1f

    if-eqz v6, :cond_1e

    .line 1413
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isSpreadHeight()Z

    move-result v14

    if-eqz v14, :cond_1e

    if-eqz v9, :cond_1e

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->isResolved()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1414
    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v8

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->getResolvedValue()F

    move-result v9

    sub-float/2addr v8, v9

    float-to-int v12, v8

    .line 1415
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    move/from16 v9, v18

    move/from16 v8, p2

    .line 1416
    invoke-static {v8, v9, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v10

    move v14, v10

    goto :goto_12

    :cond_1e
    move/from16 v9, v18

    move/from16 v8, p2

    const/4 v10, -0x2

    .line 1419
    invoke-static {v8, v9, v10}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v6

    move v14, v6

    const/4 v6, 0x0

    const/4 v10, 0x1

    goto :goto_14

    :cond_1f
    move/from16 v9, v18

    move/from16 v8, p2

    const/4 v10, -0x2

    const/4 v14, -0x1

    if-ne v12, v14, :cond_20

    .line 1425
    invoke-static {v8, v9, v14}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v15

    move v14, v15

    :goto_12
    const/4 v10, 0x0

    goto :goto_14

    :cond_20
    if-ne v12, v10, :cond_21

    const/4 v10, 0x1

    goto :goto_13

    :cond_21
    const/4 v10, 0x0

    .line 1431
    :goto_13
    invoke-static {v8, v9, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v14

    .line 1434
    :goto_14
    invoke-virtual {v3, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1435
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v13, :cond_22

    .line 1436
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v14, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    const-wide/16 v19, 0x1

    add-long v14, v14, v19

    iput-wide v14, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    goto :goto_15

    :cond_22
    const-wide/16 v19, 0x1

    :goto_15
    const/4 v13, -0x2

    if-ne v11, v13, :cond_23

    const/4 v11, 0x1

    goto :goto_16

    :cond_23
    const/4 v11, 0x0

    .line 1439
    :goto_16
    invoke-virtual {v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    if-ne v12, v13, :cond_24

    const/4 v11, 0x1

    goto :goto_17

    :cond_24
    const/4 v11, 0x0

    .line 1440
    :goto_17
    invoke-virtual {v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1441
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1442
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1444
    invoke-virtual {v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1445
    invoke-virtual {v7, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v5, :cond_25

    .line 1448
    invoke-virtual {v7, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    :cond_25
    if-eqz v10, :cond_26

    .line 1451
    invoke-virtual {v7, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    :cond_26
    if-eqz v2, :cond_27

    .line 1454
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    goto :goto_18

    .line 1456
    :cond_27
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    :goto_18
    if-eqz v6, :cond_28

    .line 1459
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    :goto_19
    move-object/from16 v6, v23

    goto :goto_1a

    .line 1461
    :cond_28
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->remove()V

    goto :goto_19

    .line 1464
    :goto_1a
    iget-boolean v2, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v2, :cond_29

    .line 1465
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 1467
    invoke-virtual {v7, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto :goto_1b

    :cond_29
    const/4 v3, -0x1

    :cond_2a
    :goto_1b
    add-int/lit8 v2, v22, 0x1

    move/from16 v18, v9

    move-wide/from16 v8, v19

    move/from16 v5, v21

    const/16 v10, 0x8

    goto/16 :goto_9

    :cond_2b
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 26

    move-object/from16 v0, p0

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 807
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 809
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 810
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    .line 811
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v4, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 813
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 815
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    .line 824
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 825
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 829
    :cond_2
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 832
    :cond_3
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-eq v5, v4, :cond_5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    .line 834
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 835
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v7, v8, :cond_4

    instance-of v7, v6, Landroid/support/constraint/Constraints;

    if-eqz v7, :cond_4

    .line 836
    check-cast v6, Landroid/support/constraint/Constraints;

    invoke-virtual {v6}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iput-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 840
    :cond_5
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v5, :cond_6

    .line 841
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v5, v0}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 844
    :cond_6
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 846
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_7

    .line 849
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintHelper;

    .line 850
    invoke-virtual {v7, v0}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_9

    .line 855
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 856
    instance-of v7, v6, Landroid/support/constraint/Placeholder;

    if-eqz v7, :cond_8

    .line 857
    check-cast v6, Landroid/support/constraint/Placeholder;

    invoke-virtual {v6, v0}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_2f

    .line 862
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 863
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    if-nez v13, :cond_a

    goto/16 :goto_13

    .line 867
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 868
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 869
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v7, :cond_b

    .line 870
    iput-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    .line 877
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    .line 878
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v8, "id/"

    .line 879
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 880
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    nop

    .line 886
    :cond_c
    :goto_7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 887
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_d

    const/16 v7, 0x8

    .line 888
    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 890
    :cond_d
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 891
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 893
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v6, :cond_f

    .line 894
    :cond_e
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :cond_f
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v7, 0x11

    if-eqz v6, :cond_13

    .line 898
    check-cast v13, Landroid/support/constraint/solver/widgets/Guideline;

    .line 899
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 900
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 901
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 902
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v7, :cond_10

    .line 903
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 904
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 905
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    :cond_10
    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_11

    .line 908
    invoke-virtual {v13, v9}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto/16 :goto_13

    :cond_11
    if-eq v6, v4, :cond_12

    .line 910
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto/16 :goto_13

    :cond_12
    if-eq v8, v4, :cond_2e

    .line 912
    invoke-virtual {v13, v8}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto/16 :goto_13

    .line 914
    :cond_13
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v6, v4, :cond_14

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v6, v4, :cond_2e

    .line 934
    :cond_14
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 935
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 936
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 937
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 938
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 939
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 940
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 942
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v7, :cond_19

    .line 945
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 946
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 947
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 948
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 949
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 950
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 951
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    if-ne v3, v4, :cond_16

    if-ne v6, v4, :cond_16

    .line 954
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v11, v4, :cond_15

    .line 955
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_8

    .line 956
    :cond_15
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v11, v4, :cond_16

    .line 957
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    :cond_16
    :goto_8
    move/from16 v25, v6

    move v6, v3

    move/from16 v3, v25

    if-ne v9, v4, :cond_18

    if-ne v10, v4, :cond_18

    .line 961
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v11, v4, :cond_17

    .line 962
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_9

    .line 963
    :cond_17
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v11, v4, :cond_18

    .line 964
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    :cond_18
    :goto_9
    move v12, v7

    move/from16 v16, v8

    goto :goto_a

    :cond_19
    move v3, v8

    move/from16 v16, v12

    move v12, v11

    :goto_a
    move v11, v10

    move v10, v15

    move v15, v9

    .line 970
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v7, v4, :cond_1a

    .line 971
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 973
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v13, v3, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    goto/16 :goto_10

    :cond_1a
    if-eq v6, v4, :cond_1c

    .line 978
    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 980
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v10

    move-object v10, v3

    move v3, v11

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_b

    :cond_1b
    move/from16 v17, v10

    move v3, v11

    :goto_b
    move v6, v3

    goto :goto_c

    :cond_1c
    move/from16 v17, v10

    move v6, v11

    if-eq v3, v4, :cond_1d

    .line 985
    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 987
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_1d
    :goto_c
    if-eq v15, v4, :cond_1e

    .line 995
    invoke-direct {v0, v15}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 997
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_d

    :cond_1e
    if-eq v6, v4, :cond_1f

    .line 1002
    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 1004
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1011
    :cond_1f
    :goto_d
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v3, v4, :cond_20

    .line 1012
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 1014
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_e

    .line 1018
    :cond_20
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v3, v4, :cond_21

    .line 1019
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 1021
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1028
    :cond_21
    :goto_e
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v3, v4, :cond_22

    .line 1029
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 1031
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_f

    .line 1035
    :cond_22
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v3, v4, :cond_23

    .line 1036
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 1038
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 1045
    :cond_23
    :goto_f
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v3, v4, :cond_24

    .line 1046
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1047
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_24

    if-eqz v3, :cond_24

    .line 1048
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_24

    .line 1049
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v7, 0x1

    .line 1050
    iput-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1051
    iput-boolean v7, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1052
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v18

    .line 1053
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1054
    invoke-virtual {v6, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 1055
    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1058
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1059
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_24
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move/from16 v15, v17

    cmpl-float v7, v15, v6

    if-ltz v7, :cond_25

    cmpl-float v7, v15, v3

    if-eqz v7, :cond_25

    .line 1064
    invoke-virtual {v13, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1066
    :cond_25
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_26

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_26

    .line 1067
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_26
    :goto_10
    if-eqz v1, :cond_28

    .line 1071
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v3, v4, :cond_27

    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v3, v4, :cond_28

    .line 1073
    :cond_27
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v13, v3, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1077
    :cond_28
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_2a

    .line 1078
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v3, v4, :cond_29

    .line 1079
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1080
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1081
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_11

    .line 1083
    :cond_29
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1084
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_11

    .line 1087
    :cond_2a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1088
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1090
    :goto_11
    iget-boolean v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_2c

    .line 1091
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v3, v4, :cond_2b

    .line 1092
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1093
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1094
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    const/4 v3, 0x0

    goto :goto_12

    .line 1096
    :cond_2b
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x0

    .line 1097
    invoke-virtual {v13, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_12

    :cond_2c
    const/4 v3, 0x0

    .line 1100
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1101
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1104
    :goto_12
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v6, :cond_2d

    .line 1105
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1107
    :cond_2d
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1108
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1109
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1110
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1111
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1114
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    :cond_2e
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_2f
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 9

    .line 1741
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1742
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1743
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1744
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1746
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1747
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1749
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1750
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1754
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq v0, v7, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1766
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_1

    .line 1762
    :cond_1
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_0

    .line 1757
    :cond_2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_1
    if-eq v1, v7, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    :goto_2
    const/4 p2, 0x0

    goto :goto_3

    .line 1780
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 1776
    :cond_4
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_2

    .line 1771
    :cond_5
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1784
    :goto_3
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1785
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1786
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1787
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1788
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1789
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1790
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1791
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    return-void
.end method

.method private updateHierarchy()V
    .locals 4

    .line 782
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 786
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 787
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 793
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 794
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    :cond_2
    return-void
.end method

.method private updatePostMeasures()V
    .locals 5

    .line 1243
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1245
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1246
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_0

    .line 1247
    check-cast v3, Landroid/support/constraint/Placeholder;

    invoke-virtual {v3, p0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1254
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 1255
    invoke-virtual {v2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 625
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 626
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1939
    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1966
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1967
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1969
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1970
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 1974
    invoke-virtual {v7, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1975
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 1978
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1979
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 1980
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 1981
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1982
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 1983
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 1984
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 1985
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 1986
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float v10, v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float v11, v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float v8, v8, v2

    float-to-int v8, v8

    .line 1991
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 1992
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 1993
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 1994
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 1995
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 1996
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 1997
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 1998
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 1999
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public fillMetrics(Landroid/support/constraint/solver/Metrics;)V
    .locals 1

    .line 1481
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    .line 1482
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroid/support/constraint/solver/Metrics;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1923
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 476
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1915
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 476
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1931
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 551
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 552
    check-cast p2, Ljava/lang/String;

    .line 553
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 778
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 768
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 731
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 721
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1908
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    .line 1958
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1140
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1142
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1818
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1819
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    .line 1821
    invoke-virtual {p0, p4}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1822
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1823
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1825
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 1830
    :cond_0
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1833
    :cond_1
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    .line 1834
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    .line 1835
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 1836
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    .line 1858
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1859
    instance-of v4, p5, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_2

    .line 1860
    check-cast p5, Landroid/support/constraint/Placeholder;

    .line 1861
    invoke-virtual {p5}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 1863
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1864
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1868
    :cond_3
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 1871
    iget-object p2, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/ConstraintHelper;

    .line 1872
    invoke-virtual {p2, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1498
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1499
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1500
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1501
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1503
    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v3, v7, :cond_1

    if-ne v5, v7, :cond_1

    .line 1504
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v4, v9, :cond_1

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1506
    :cond_1
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v3, v9, :cond_2

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    if-ne v5, v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_3

    .line 1507
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    if-ne v4, v12, :cond_3

    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    :cond_3
    const/high16 v12, -0x80000000

    if-eqz v9, :cond_4

    if-ne v3, v12, :cond_4

    if-ne v5, v7, :cond_4

    .line 1509
    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-lt v4, v13, :cond_4

    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    :cond_4
    if-eqz v9, :cond_5

    if-ne v3, v7, :cond_5

    if-ne v5, v12, :cond_5

    .line 1512
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    if-ne v4, v9, :cond_5

    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 1520
    :cond_5
    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 1521
    iput v5, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 1522
    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 1523
    iput v6, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v4

    .line 1528
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1529
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1530
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1531
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v6, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1533
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_7

    .line 1534
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutDirection()I

    move-result v6

    if-ne v6, v11, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1537
    :cond_7
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1538
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    .line 1539
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    .line 1540
    iget-boolean v9, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v9, :cond_8

    .line 1541
    iput-boolean v10, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1542
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1545
    :cond_8
    iget v9, v0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    const/16 v12, 0x8

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_9

    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_a

    .line 1548
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->preOptimize()V

    .line 1549
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimizeForDimensions(II)V

    .line 1550
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureDimensions(II)V

    goto :goto_3

    .line 1552
    :cond_a
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1554
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updatePostMeasures()V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v13

    if-lez v13, :cond_b

    const-string v13, "First pass"

    .line 1564
    invoke-virtual {v0, v13}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1569
    :cond_b
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1571
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v4, v14

    .line 1572
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    add-int/2addr v3, v14

    if-lez v13, :cond_2a

    .line 1580
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v10, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    .line 1582
    :goto_4
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_d

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 1584
    :goto_5
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1585
    iget-object v15, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    iget v8, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v17, v8

    move v15, v14

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_6
    const-wide/16 v19, 0x1

    if-ge v8, v13, :cond_20

    .line 1587
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1588
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_e

    move/from16 v24, v5

    move/from16 v23, v6

    move/from16 v22, v13

    :goto_7
    move/from16 v5, v17

    move/from16 v7, v18

    const/4 v6, -0x1

    goto/16 :goto_f

    .line 1592
    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move/from16 v22, v13

    move-object/from16 v13, v21

    check-cast v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move/from16 v23, v6

    .line 1593
    iget-boolean v6, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v6, :cond_f

    goto/16 :goto_e

    .line 1596
    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v24, v5

    const/16 v5, 0x8

    if-ne v6, v5, :cond_10

    :goto_8
    goto :goto_7

    :cond_10
    if-eqz v9, :cond_11

    .line 1600
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1601
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->isResolved()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_8

    .line 1607
    :cond_11
    iget v5, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_12

    iget-boolean v5, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-eqz v5, :cond_12

    .line 1608
    iget v5, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v3, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_9

    .line 1610
    :cond_12
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1612
    :goto_9
    iget v6, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v6, v1, :cond_13

    iget-boolean v1, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v1, :cond_13

    .line 1613
    iget v1, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v4, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_a

    .line 1615
    :cond_13
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1619
    :goto_a
    invoke-virtual {v12, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1620
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v1, :cond_14

    .line 1621
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v5, v1, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    add-long v5, v5, v19

    iput-wide v5, v1, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    .line 1626
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1627
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1629
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    if-eq v1, v6, :cond_17

    .line 1630
    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v9, :cond_15

    .line 1632
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    :cond_15
    if-eqz v10, :cond_16

    .line 1634
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    if-le v1, v15, :cond_16

    .line 1635
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v1

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1636
    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v1, v6

    .line 1637
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v15, v1

    :cond_16
    const/4 v14, 0x1

    .line 1641
    :cond_17
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    if-eq v5, v1, :cond_1b

    .line 1642
    invoke-virtual {v7, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v9, :cond_18

    .line 1644
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->resolve(I)V

    :cond_18
    if-eqz v11, :cond_19

    .line 1646
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    move/from16 v5, v17

    if-le v1, v5, :cond_1a

    .line 1647
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1648
    invoke-virtual {v7, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v1, v6

    .line 1649
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v17, v1

    goto :goto_b

    :cond_19
    move/from16 v5, v17

    :cond_1a
    move/from16 v17, v5

    :goto_b
    const/4 v14, 0x1

    goto :goto_c

    :cond_1b
    move/from16 v5, v17

    .line 1653
    :goto_c
    iget-boolean v1, v13, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v1, :cond_1c

    .line 1654
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1d

    .line 1655
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    if-eq v1, v5, :cond_1d

    .line 1656
    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    const/4 v14, 0x1

    goto :goto_d

    :cond_1c
    const/4 v6, -0x1

    .line 1661
    :cond_1d
    :goto_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_1e

    .line 1662
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v7, v18

    invoke-static {v7, v1}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v18

    goto :goto_10

    :cond_1e
    move/from16 v7, v18

    goto :goto_10

    :cond_1f
    :goto_e
    move/from16 v24, v5

    goto/16 :goto_7

    :goto_f
    move/from16 v17, v5

    move/from16 v18, v7

    :goto_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v22

    move/from16 v6, v23

    move/from16 v5, v24

    move/from16 v1, p1

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v12, 0x8

    goto/16 :goto_6

    :cond_20
    move/from16 v24, v5

    move/from16 v23, v6

    move/from16 v22, v13

    move/from16 v5, v17

    move/from16 v7, v18

    if-eqz v14, :cond_24

    .line 1666
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v6, v24

    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1667
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v6, v23

    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    if-eqz v9, :cond_21

    .line 1669
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->solveGraph()V

    :cond_21
    const-string v1, "2nd pass"

    .line 1671
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    .line 1673
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    if-ge v1, v15, :cond_22

    .line 1674
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v11, 0x1

    goto :goto_11

    :cond_22
    const/4 v11, 0x0

    .line 1677
    :goto_11
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    if-ge v1, v5, :cond_23

    .line 1678
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/16 v16, 0x1

    goto :goto_12

    :cond_23
    move/from16 v16, v11

    :goto_12
    if-eqz v16, :cond_24

    const-string v1, "3rd pass"

    .line 1682
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem(Ljava/lang/String;)V

    :cond_24
    move/from16 v1, v22

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v1, :cond_2b

    .line 1686
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1687
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-nez v8, :cond_27

    :cond_25
    const/16 v10, 0x8

    :cond_26
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_14

    .line 1691
    :cond_27
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_28

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_25

    .line 1692
    :cond_28
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_26

    .line 1693
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1694
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1695
    invoke-virtual {v8, v9, v6}, Landroid/view/View;->measure(II)V

    .line 1696
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v6, :cond_29

    .line 1697
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v8, v6, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    add-long v8, v8, v19

    iput-wide v8, v6, Landroid/support/constraint/solver/Metrics;->additionalMeasures:J

    :cond_29
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2a
    const/4 v7, 0x0

    .line 1705
    :cond_2b
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 1706
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    .line 1708
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2e

    move/from16 v4, p1

    .line 1709
    invoke-static {v1, v4, v7}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v4, v7, 0x10

    .line 1710
    invoke-static {v3, v2, v4}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 1714
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1715
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1716
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_2c

    or-int/2addr v1, v4

    .line 1719
    :cond_2c
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_2d

    or-int/2addr v2, v4

    .line 1722
    :cond_2d
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1723
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1724
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    goto :goto_15

    .line 1726
    :cond_2e
    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1727
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 1728
    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    :goto_15
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 648
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 650
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 651
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 652
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 654
    new-instance v1, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 655
    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 656
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 659
    :cond_1
    instance-of v0, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 660
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 661
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 663
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 664
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 678
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 680
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 681
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 682
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 683
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 685
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 637
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 638
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3115
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 3116
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v0, -0x1

    .line 3118
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidth:I

    .line 3119
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeight:I

    .line 3120
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3121
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightSize:I

    const/4 v0, 0x0

    .line 3122
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3123
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mLastMeasureHeightMode:I

    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0

    .line 1947
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 533
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 534
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 535
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 537
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 538
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 540
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 542
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 543
    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 580
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 581
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 582
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 753
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    .line 756
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 757
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 740
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 743
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 744
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 707
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    .line 710
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 711
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 694
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 697
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 698
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1898
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected solveLinearSystem(Ljava/lang/String;)V
    .locals 4

    .line 1803
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1804
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz p1, :cond_0

    .line 1805
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v0, p1, Landroid/support/constraint/solver/Metrics;->resolutions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/support/constraint/solver/Metrics;->resolutions:J

    :cond_0
    return-void
.end method
