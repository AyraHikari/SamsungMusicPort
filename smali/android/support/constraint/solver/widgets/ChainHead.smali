.class public Landroid/support/constraint/solver/widgets/ChainHead;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mOrientation:I

.field protected mTotalWeight:F

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    .line 59
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 60
    iput p2, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    .line 61
    iput-boolean p3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    return-void
.end method

.method private defineChainProperties()V
    .locals 12

    .line 79
    iget v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 82
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 83
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x1

    if-nez v2, :cond_d

    .line 86
    iget v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsCount:I

    .line 87
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 88
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v8, v6, v7

    .line 89
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    .line 91
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v6, :cond_0

    .line 92
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 94
    :cond_0
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_1

    .line 95
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v4, v6, v7

    .line 97
    :cond_1
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 100
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget-object v6, v6, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v6, v6, v7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v6, v6, v7

    if-ne v6, v1, :cond_9

    .line 104
    :cond_2
    iget v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 105
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v6, v6, v7

    const/4 v7, 0x0

    cmpl-float v9, v6, v7

    if-lez v9, :cond_3

    .line 107
    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    iget v11, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aget v10, v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 110
    :cond_3
    iget v9, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    invoke-static {v4, v9}, Landroid/support/constraint/solver/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 112
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    goto :goto_1

    .line 114
    :cond_4
    iput-boolean v5, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 116
    :goto_1
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 117
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 119
    :cond_5
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_6
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v6, :cond_7

    .line 123
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 125
    :cond_7
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_8

    .line 126
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v7, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    aput-object v4, v6, v7

    .line 128
    :cond_8
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 133
    :cond_9
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_b

    .line 135
    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 136
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_b

    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v7, v4, :cond_a

    goto :goto_2

    :cond_a
    move-object v8, v6

    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    move-object v4, v8

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 149
    :cond_d
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 151
    iget v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mOrientation:I

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mIsRtl:Z

    if-eqz v0, :cond_e

    .line 152
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_3

    .line 154
    :cond_e
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 157
    :goto_3
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasDefinedWeights:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v0, :cond_f

    const/4 v3, 0x1

    :cond_f
    iput-boolean v3, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    return-void
.end method

.method private static isMatchConstraintEqualityCandidate(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public define()V
    .locals 1

    .line 193
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mDefined:Z

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ChainHead;->defineChainProperties()V

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mDefined:Z

    return-void
.end method

.method public getFirst()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getFirstMatchConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getFirstVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLast()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLastMatchConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getLastVisibleWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getTotalWeight()F
    .locals 1

    .line 189
    iget v0, p0, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    return v0
.end method
