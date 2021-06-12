.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroid/support/constraint/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field protected static final ANCHOR_BASELINE:I = 0x4

.field protected static final ANCHOR_BOTTOM:I = 0x3

.field protected static final ANCHOR_LEFT:I = 0x0

.field protected static final ANCHOR_RIGHT:I = 0x1

.field protected static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.5f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field protected mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field protected mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedMatchConstraintDefault:[I

.field mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v2, 0x2

    .line 78
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 92
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    .line 93
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 143
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 144
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 145
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 146
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 147
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 148
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 150
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x6

    .line 158
    new-array v4, v4, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 164
    new-array v4, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    .line 167
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 170
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 171
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 172
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 173
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 176
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 177
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 180
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 181
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 182
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 183
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 186
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 187
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 190
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 203
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 204
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 212
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 215
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 217
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 218
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 232
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 233
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 237
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 239
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 240
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 242
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 243
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 394
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v2, 0x2

    .line 78
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 92
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v3, 0x0

    .line 93
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 143
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 144
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 145
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 146
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 147
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 148
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 150
    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x6

    .line 158
    new-array v4, v4, [Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 164
    new-array v4, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    .line 167
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 170
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 171
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 172
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 173
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 176
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 177
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 180
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 181
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 182
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 183
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 186
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 187
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 190
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 203
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 204
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 212
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 215
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 217
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 218
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 232
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 233
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 237
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 239
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 240
    new-array v0, v2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 242
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 243
    iput-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 406
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 407
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 408
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 409
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 410
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 411
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .line 442
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v1, p11

    move/from16 v2, p12

    move-object/from16 v13, p7

    .line 2474
    invoke-virtual {v10, v13}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object/from16 v8, p8

    .line 2475
    invoke-virtual {v10, v8}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    .line 2476
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2477
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v14

    .line 2479
    iget-boolean v8, v10, Landroid/support/constraint/solver/LinearSystem;->graphOptimizer:Z

    const-wide/16 v15, 0x1

    if-eqz v8, :cond_2

    .line 2480
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v8, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v13, 0x1

    if-ne v8, v13, :cond_2

    .line 2481
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v8, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v8, v13, :cond_2

    .line 2482
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2483
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v1

    iget-wide v2, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long/2addr v2, v15

    iput-wide v2, v1, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 2485
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 2486
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2488
    invoke-virtual {v10, v12, v7, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_1
    return-void

    .line 2493
    :cond_2
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2494
    invoke-static {}, Landroid/support/constraint/solver/LinearSystem;->getMetrics()Landroid/support/constraint/solver/Metrics;

    move-result-object v8

    move-object/from16 v20, v14

    iget-wide v13, v8, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    add-long/2addr v13, v15

    iput-wide v13, v8, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    goto :goto_0

    :cond_3
    move-object/from16 v20, v14

    .line 2497
    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    .line 2498
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v13

    .line 2499
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v21

    if-eqz v8, :cond_4

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    :goto_1
    if-eqz v13, :cond_5

    add-int/lit8 v14, v14, 0x1

    :cond_5
    if-eqz v21, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    if-eqz p14, :cond_7

    const/4 v11, 0x3

    goto :goto_2

    :cond_7
    move/from16 v11, p16

    .line 2511
    :goto_2
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p5 .. p5}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/4 v12, 0x4

    packed-switch v15, :pswitch_data_0

    :goto_3
    :pswitch_0
    const/4 v15, 0x0

    goto :goto_4

    :pswitch_1
    if-ne v11, v12, :cond_8

    goto :goto_3

    :cond_8
    const/4 v15, 0x1

    .line 2529
    :goto_4
    iget v12, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v22, v14

    const/16 v14, 0x8

    if-ne v12, v14, :cond_9

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    move/from16 v12, p10

    :goto_5
    if-eqz p20, :cond_b

    if-nez v8, :cond_a

    if-nez v13, :cond_a

    if-nez v21, :cond_a

    move/from16 v14, p9

    .line 2537
    invoke-virtual {v10, v9, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_b

    if-nez v13, :cond_b

    .line 2539
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    move/from16 v23, v13

    const/4 v13, 0x6

    invoke-virtual {v10, v9, v6, v14, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_7

    :cond_b
    :goto_6
    move/from16 v23, v13

    const/4 v13, 0x6

    :goto_7
    if-nez v15, :cond_f

    if-eqz p6, :cond_d

    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 2546
    invoke-virtual {v10, v7, v9, v14, v13}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-lez v1, :cond_c

    const/4 v14, 0x6

    .line 2548
    invoke-virtual {v10, v7, v9, v1, v14}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_8

    :cond_c
    const/4 v14, 0x6

    :goto_8
    const v12, 0x7fffffff

    if-ge v2, v12, :cond_e

    .line 2551
    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_9

    :cond_d
    const/4 v13, 0x3

    const/4 v14, 0x6

    .line 2554
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    :cond_e
    :goto_9
    move/from16 v13, p17

    move/from16 v2, p18

    move-object/from16 v24, v6

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    goto/16 :goto_13

    :cond_f
    const/4 v13, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    if-ne v14, v2, :cond_10

    move/from16 v14, p18

    move v13, v12

    goto :goto_a

    :cond_10
    move v13, v14

    move/from16 v14, p18

    :goto_a
    if-ne v14, v2, :cond_11

    move v2, v12

    goto :goto_b

    :cond_11
    move v2, v14

    :goto_b
    if-lez v13, :cond_13

    if-eqz p2, :cond_12

    const/4 v14, 0x6

    .line 2566
    invoke-virtual {v10, v7, v9, v13, v14}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_c

    :cond_12
    const/4 v14, 0x6

    .line 2568
    invoke-virtual {v10, v7, v9, v13, v14}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2570
    :goto_c
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_d

    :cond_13
    const/4 v14, 0x6

    :goto_d
    if-lez v2, :cond_15

    if-eqz p2, :cond_14

    const/4 v14, 0x1

    .line 2574
    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    const/4 v14, 0x6

    goto :goto_e

    .line 2576
    :cond_14
    invoke-virtual {v10, v7, v9, v2, v14}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2578
    :goto_e
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_15
    const/4 v14, 0x1

    if-ne v11, v14, :cond_18

    if-eqz p2, :cond_16

    const/4 v14, 0x6

    .line 2582
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_11

    :cond_16
    if-eqz p15, :cond_17

    const/4 v14, 0x4

    .line 2584
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_11

    :cond_17
    const/4 v14, 0x1

    .line 2586
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto/16 :goto_11

    :cond_18
    const/4 v14, 0x2

    if-ne v11, v14, :cond_1b

    .line 2591
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v14

    move-object/from16 v24, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v6, :cond_1a

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v6

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v6, v14, :cond_19

    goto :goto_f

    .line 2596
    :cond_19
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2597
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v25, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v25

    goto :goto_10

    .line 2593
    :cond_1a
    :goto_f
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2594
    iget-object v14, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v26, v6

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v17, v6

    move-object/from16 v18, v26

    .line 2599
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v14

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    move-object v15, v7

    move-object/from16 v16, v9

    move/from16 v19, p19

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    const/4 v15, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    move-object/from16 v24, v6

    move/from16 v27, v11

    move-object/from16 v6, v20

    move/from16 v0, v22

    const/4 v11, 0x2

    const/16 v20, 0x4

    :goto_12
    if-eqz v15, :cond_1d

    if-eq v0, v11, :cond_1d

    if-nez p14, :cond_1d

    .line 2605
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-lez v2, :cond_1c

    .line 2607
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_1c
    const/4 v14, 0x6

    .line 2609
    invoke-virtual {v10, v7, v9, v12, v14}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/4 v15, 0x0

    :cond_1d
    :goto_13
    if-eqz p20, :cond_34

    if-eqz p15, :cond_1e

    goto/16 :goto_20

    :cond_1e
    const/4 v0, 0x5

    if-nez v8, :cond_21

    if-nez v23, :cond_21

    if-nez v21, :cond_21

    if-eqz p2, :cond_1f

    const/4 v4, 0x0

    move-object/from16 v12, p4

    .line 2631
    invoke-virtual {v10, v12, v7, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_14

    :cond_1f
    move-object/from16 v12, p4

    :cond_20
    :goto_14
    move-object v2, v7

    const/4 v0, 0x0

    const/4 v1, 0x6

    goto/16 :goto_1f

    :cond_21
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v12, p4

    if-eqz v8, :cond_22

    if-nez v23, :cond_22

    if-eqz p2, :cond_20

    .line 2636
    invoke-virtual {v10, v12, v7, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_14

    :cond_22
    if-nez v8, :cond_23

    if-eqz v23, :cond_23

    .line 2639
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x6

    invoke-virtual {v10, v7, v6, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-eqz p2, :cond_20

    move-object/from16 v14, p3

    .line 2641
    invoke-virtual {v10, v9, v14, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_14

    :cond_23
    const/4 v11, 0x3

    move-object/from16 v14, p3

    if-eqz v8, :cond_20

    if-eqz v23, :cond_20

    if-eqz v15, :cond_2e

    if-eqz p2, :cond_24

    if-nez v1, :cond_24

    const/4 v1, 0x6

    .line 2654
    invoke-virtual {v10, v7, v9, v4, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_24
    if-nez v27, :cond_29

    if-gtz v2, :cond_26

    if-lez v13, :cond_25

    goto :goto_15

    :cond_25
    const/4 v1, 0x0

    const/4 v5, 0x6

    goto :goto_16

    :cond_26
    :goto_15
    const/4 v1, 0x1

    .line 2663
    :goto_16
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    move-object/from16 v8, v24

    invoke-virtual {v10, v9, v8, v3, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2664
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v7, v6, v3, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    if-gtz v2, :cond_28

    if-lez v13, :cond_27

    goto :goto_17

    :cond_27
    const/4 v13, 0x0

    goto :goto_18

    :cond_28
    :goto_17
    const/4 v13, 0x1

    :goto_18
    move v15, v1

    move-object/from16 v11, p0

    goto :goto_1c

    :cond_29
    move-object/from16 v8, v24

    move/from16 v1, v27

    const/4 v13, 0x1

    if-ne v1, v13, :cond_2a

    const/4 v0, 0x6

    move-object/from16 v11, p0

    :goto_19
    const/4 v15, 0x1

    goto :goto_1c

    :cond_2a
    if-ne v1, v11, :cond_2d

    if-nez p14, :cond_2b

    move-object/from16 v11, p0

    .line 2676
    iget v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2c

    if-gtz v2, :cond_2c

    const/4 v5, 0x6

    goto :goto_1a

    :cond_2b
    move-object/from16 v11, p0

    .line 2681
    :cond_2c
    :goto_1a
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v10, v9, v8, v1, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2682
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v7, v6, v1, v5}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_19

    :cond_2d
    move-object/from16 v11, p0

    const/4 v13, 0x0

    goto :goto_1b

    :cond_2e
    move-object/from16 v8, v24

    move-object/from16 v11, p0

    const/4 v13, 0x1

    if-eqz p2, :cond_2f

    .line 2688
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    invoke-virtual {v10, v9, v8, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2689
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v7, v6, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_2f
    :goto_1b
    const/4 v15, 0x0

    :goto_1c
    if-eqz v13, :cond_30

    .line 2694
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 2695
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v8

    move/from16 v5, p13

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object v11, v8

    move v8, v13

    move-object v13, v9

    move v9, v0

    .line 2694
    invoke-virtual/range {v1 .. v9}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1d

    :cond_30
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object v11, v8

    move-object v13, v9

    :goto_1d
    if-eqz v15, :cond_31

    .line 2700
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v10, v13, v11, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2701
    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    invoke-virtual {v10, v2, v3, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1e

    :cond_31
    move-object/from16 v2, v29

    const/4 v1, 0x6

    :goto_1e
    if-eqz p2, :cond_32

    const/4 v0, 0x0

    .line 2705
    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1f

    :cond_32
    const/4 v0, 0x0

    :goto_1f
    if-eqz p2, :cond_33

    .line 2710
    invoke-virtual {v10, v12, v2, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_33
    return-void

    :cond_34
    :goto_20
    move v3, v0

    move-object v2, v7

    move-object v13, v9

    const/4 v0, 0x0

    const/4 v1, 0x6

    move-object/from16 v12, p4

    move-object/from16 v14, p3

    if-ge v3, v11, :cond_35

    if-eqz p2, :cond_35

    .line 2620
    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2621
    invoke-virtual {v10, v12, v2, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 38

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2198
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v21

    .line 2199
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 2200
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v6

    .line 2201
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 2202
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 2209
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_c

    .line 2210
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v13

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2211
    :goto_0
    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_1

    iget-object v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2214
    :goto_1
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_2

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v7, v8, :cond_2

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_2

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_2

    .line 2216
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7, v15, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2218
    :cond_2
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_3

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v7, v8, :cond_4

    :cond_3
    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_5

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v7, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    .line 2223
    :goto_2
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_6

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v8, v9, :cond_6

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_6

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v8, v9, :cond_6

    .line 2225
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8, v15, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2227
    :cond_6
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_7

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v8, v9, :cond_8

    :cond_7
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_9

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v8, v9, :cond_9

    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-eqz v0, :cond_a

    .line 2232
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v9, v1, :cond_a

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_a

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_a

    .line 2234
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2235
    invoke-virtual {v14, v9, v10, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_a
    if-eqz v5, :cond_b

    .line 2238
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v9, v1, :cond_b

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b

    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_b

    .line 2240
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    .line 2241
    invoke-virtual {v14, v9, v4, v13, v2}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    :cond_b
    move v12, v5

    move/from16 v16, v7

    move/from16 v22, v8

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    .line 2245
    :goto_4
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2246
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v5, v7, :cond_d

    .line 2247
    iget v5, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2249
    :cond_d
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2250
    iget v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_e

    .line 2251
    iget v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2255
    :cond_e
    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v13

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_f

    const/4 v8, 0x1

    goto :goto_5

    :cond_f
    const/4 v8, 0x0

    .line 2256
    :goto_5
    iget-object v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v2

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v11, :cond_10

    const/4 v9, 0x1

    goto :goto_6

    :cond_10
    const/4 v9, 0x0

    .line 2261
    :goto_6
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2262
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2264
    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2265
    iget v2, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2267
    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v17, 0x0

    const/16 v18, 0x4

    cmpl-float v13, v13, v17

    if-lez v13, :cond_19

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v13, v1, :cond_19

    .line 2269
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v3

    const/4 v3, 0x3

    if-ne v1, v13, :cond_11

    if-nez v11, :cond_11

    const/4 v11, 0x3

    .line 2273
    :cond_11
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v13, :cond_12

    if-nez v2, :cond_12

    const/4 v2, 0x3

    .line 2278
    :cond_12
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v13, :cond_13

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x1

    aget-object v1, v1, v13

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v13, :cond_13

    if-ne v11, v3, :cond_13

    if-ne v2, v3, :cond_13

    .line 2282
    invoke-virtual {v15, v0, v12, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto/16 :goto_7

    .line 2283
    :cond_13
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v1, v1, v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_15

    if-ne v11, v3, :cond_15

    .line 2285
    iput v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2286
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 2287
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x1

    aget-object v3, v3, v8

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v5, :cond_14

    move/from16 v29, v1

    move/from16 v25, v2

    move/from16 v30, v7

    const/16 v20, 0x4

    goto :goto_a

    :cond_14
    move/from16 v29, v1

    move/from16 v25, v2

    goto :goto_8

    :cond_15
    const/4 v8, 0x1

    .line 2291
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v9, :cond_18

    if-ne v2, v3, :cond_18

    .line 2293
    iput v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2294
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2296
    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v3

    iput v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2298
    :cond_16
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 2299
    iget-object v3, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_17

    move/from16 v30, v1

    move/from16 v29, v5

    move/from16 v20, v11

    const/16 v25, 0x4

    goto :goto_a

    :cond_17
    move/from16 v30, v1

    move/from16 v25, v2

    move/from16 v29, v5

    goto :goto_9

    :cond_18
    :goto_7
    move/from16 v25, v2

    move/from16 v29, v5

    :goto_8
    move/from16 v30, v7

    :goto_9
    move/from16 v20, v11

    const/16 v28, 0x1

    goto :goto_b

    :cond_19
    move-object/from16 v27, v3

    move/from16 v25, v2

    move/from16 v29, v5

    move/from16 v30, v7

    move/from16 v20, v11

    :goto_a
    const/16 v28, 0x0

    .line 2306
    :goto_b
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aput v20, v1, v2

    .line 2307
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x1

    aput v25, v1, v2

    if-eqz v28, :cond_1b

    .line 2309
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v1, :cond_1a

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    goto :goto_c

    :cond_1a
    const/4 v2, -0x1

    :goto_c
    const/16 v26, 0x1

    goto :goto_d

    :cond_1b
    const/4 v2, -0x1

    :cond_1c
    const/16 v26, 0x0

    .line 2313
    :goto_d
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_1d

    instance-of v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_1d

    const/16 v31, 0x1

    goto :goto_e

    :cond_1d
    const/16 v31, 0x0

    .line 2317
    :goto_e
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/lit8 v23, v1, 0x1

    .line 2321
    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v13, 0x2

    const/16 v32, 0x0

    if-eq v1, v13, :cond_20

    .line 2322
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_1e

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_f

    :cond_1e
    move-object/from16 v33, v32

    .line 2323
    :goto_f
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_1f

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v14, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_10

    :cond_1f
    move-object/from16 v34, v32

    .line 2324
    :goto_10
    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    aget-object v5, v1, v17

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v1, v1, v17

    move/from16 v24, v12

    move v12, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v13, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v17, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v18, v1

    iget v1, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v19, v1

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v35

    move-object/from16 v36, v27

    move-object/from16 v3, v34

    move-object/from16 v27, v4

    move-object/from16 v4, v33

    move-object/from16 v37, v6

    move/from16 v6, v31

    move-object/from16 v31, v10

    move/from16 v10, v29

    move/from16 v14, v26

    move/from16 v15, v16

    move/from16 v16, v20

    move/from16 v20, v23

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    goto :goto_11

    :cond_20
    move-object/from16 v37, v6

    move-object/from16 v31, v10

    move/from16 v24, v12

    move-object/from16 v36, v27

    move-object/from16 v27, v4

    :goto_11
    move-object/from16 v15, p0

    .line 2330
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    return-void

    .line 2340
    :cond_21
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_22

    instance-of v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_22

    const/4 v6, 0x1

    goto :goto_12

    :cond_22
    const/4 v6, 0x0

    :goto_12
    if-eqz v28, :cond_24

    .line 2343
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eq v0, v14, :cond_23

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    :cond_23
    const/16 v16, 0x1

    goto :goto_13

    :cond_24
    const/16 v16, 0x0

    .line 2346
    :goto_13
    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_26

    .line 2347
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v14, :cond_25

    .line 2348
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    move-object/from16 v4, v37

    goto :goto_14

    :cond_25
    move-object/from16 v10, p1

    .line 2350
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    invoke-virtual {v10, v2, v4, v0, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2351
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_27

    .line 2352
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    const/4 v3, 0x0

    .line 2354
    invoke-virtual {v10, v2, v0, v3, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    const/16 v20, 0x0

    goto :goto_15

    :cond_26
    move-object/from16 v4, v37

    move-object/from16 v10, p1

    :cond_27
    :goto_14
    move/from16 v20, v23

    .line 2359
    :goto_15
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_28

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_16

    :cond_28
    move-object/from16 v23, v32

    .line 2360
    :goto_16
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_29

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    move-object v3, v0

    goto :goto_17

    :cond_29
    move-object/from16 v3, v32

    .line 2361
    :goto_17
    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v0, v14

    iget-object v7, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v11, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v12, v0, v14

    iget v13, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v17, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v18, v0

    iget v0, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v24, v4

    move-object/from16 v4, v23

    move/from16 v10, v30

    move/from16 v14, v16

    move/from16 v15, v22

    move/from16 v16, v25

    invoke-direct/range {v0 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    if-eqz v28, :cond_2b

    const/4 v6, 0x6

    move-object/from16 v7, p0

    .line 2368
    iget v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 2369
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v31

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_18

    .line 2371
    :cond_2a
    iget v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move-object/from16 v4, v24

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/LinearSystem;->addRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FI)V

    goto :goto_18

    :cond_2b
    move-object/from16 v7, p0

    .line 2375
    :goto_18
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2376
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addCenterPoint(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V

    :cond_2c
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1569
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public analyze(I)V
    .locals 0

    .line 339
    invoke-static {p1, p0}, Landroid/support/constraint/solver/widgets/Optimizer;->analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 6

    .line 1651
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 6

    .line 1636
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1668
    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p6

    .line 1686
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v12, 0x0

    if-ne v0, v1, :cond_c

    .line 1689
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_8

    .line 1690
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1691
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1692
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    .line 1693
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v13

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    .line 1696
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 1697
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1700
    :cond_2
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1702
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v10, :cond_3

    .line 1706
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v13, :cond_5

    .line 1707
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 1710
    :cond_5
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1712
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v14, :cond_6

    .line 1717
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1718
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v0, :cond_7

    .line 1720
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1721
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_7
    if-eqz v14, :cond_1d

    .line 1723
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1724
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1726
    :cond_8
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_b

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_9

    goto :goto_2

    .line 1734
    :cond_9
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_a

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_1d

    .line 1736
    :cond_a
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1738
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1740
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1741
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1728
    :cond_b
    :goto_2
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1730
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1733
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1743
    :cond_c
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_e

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_d

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_e

    .line 1746
    :cond_d
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1747
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1748
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1749
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1750
    invoke-virtual {v2, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1751
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1752
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1753
    :cond_e
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_10

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v1, :cond_f

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_10

    .line 1756
    :cond_f
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1757
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1758
    invoke-virtual {v1, v0, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1759
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1760
    invoke-virtual {v1, v0, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1761
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1762
    invoke-virtual {v1, v0, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1763
    :cond_10
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_11

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_11

    .line 1766
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1767
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1768
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1769
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1770
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1771
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1772
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1773
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1774
    :cond_11
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v1, :cond_12

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v1, :cond_12

    .line 1777
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1778
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1779
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1780
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1781
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1782
    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    .line 1783
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1784
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    .line 1786
    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1787
    invoke-virtual/range {p2 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1788
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1791
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_15

    .line 1792
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1793
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v0, :cond_13

    .line 1795
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_13
    if-eqz v3, :cond_14

    .line 1798
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_14
    :goto_3
    move-object/from16 v0, p5

    goto/16 :goto_6

    .line 1801
    :cond_15
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_19

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_16

    goto :goto_4

    .line 1827
    :cond_16
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v0, v3, :cond_17

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v3, :cond_1c

    .line 1829
    :cond_17
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1830
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_18

    .line 1831
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1833
    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1834
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1835
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1836
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1837
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_5

    .line 1803
    :cond_19
    :goto_4
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 1805
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1807
    :cond_1a
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1808
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v2, :cond_1b

    .line 1809
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1811
    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1812
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1813
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1814
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1815
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1c
    :goto_5
    move/from16 v12, p4

    goto :goto_3

    .line 1851
    :goto_6
    invoke-virtual {v1, v2, v12, v0, v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 1852
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    :cond_1d
    :goto_7
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1730
    throw v1
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .locals 6

    .line 1615
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)V
    .locals 6

    .line 1611
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 8

    .line 1620
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1621
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;FI)V
    .locals 6

    .line 591
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 593
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    return-void
.end method

.method public connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    return-void
.end method

.method public createObjectVariables(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 687
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 688
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 689
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    .line 690
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    :cond_0
    return-void
.end method

.method public disconnectUnlockedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 6

    .line 2007
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 2008
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2009
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2010
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2011
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2012
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 1992
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1993
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1994
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1995
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1996
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 5

    .line 1099
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1100
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1101
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 1102
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 1103
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1104
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v2, v0

    .line 1105
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v3, v1

    .line 1106
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .line 2024
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2052
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2044
    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2041
    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2047
    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2038
    :pswitch_4
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2035
    :pswitch_5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2032
    :pswitch_6
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2029
    :pswitch_7
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 2026
    :pswitch_8
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 984
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 946
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 994
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1504
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1298
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1307
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getDrawBottom()I
    .locals 2

    .line 863
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawHeight()I
    .locals 1

    .line 854
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return v0
.end method

.method public getDrawRight()I
    .locals 2

    .line 872
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawWidth()I
    .locals 1

    .line 850
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return v0
.end method

.method public getDrawX()I
    .locals 2

    .line 837
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 2

    .line 846
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 816
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 819
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 956
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5

    .line 2117
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v2, p0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 2121
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 2122
    :cond_0
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_2

    .line 2123
    :cond_1
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 2124
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v0, v2

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    move-object v4, v1

    goto :goto_3

    .line 2128
    :cond_3
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    .line 2129
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v4, v2, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1542
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2061
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 2

    .line 731
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getInternalDrawRight()I
    .locals 2

    .line 727
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method getInternalDrawX()I
    .locals 1

    .line 719
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    return v0
.end method

.method getInternalDrawY()I
    .locals 1

    .line 723
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 919
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 100
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 910
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 901
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .line 784
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 785
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 786
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_0

    .line 787
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 788
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_1

    .line 789
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 790
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 794
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 795
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .line 766
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 767
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 768
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 769
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 770
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_1

    .line 771
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 772
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 776
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ge v1, v0, :cond_2

    .line 777
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    :cond_2
    return v0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .line 937
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRootWidgetContainer()Landroid/support/constraint/solver/widgets/WidgetContainer;
    .locals 2

    move-object v0, p0

    .line 526
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_0
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v1, :cond_1

    .line 530
    check-cast v0, Landroid/support/constraint/solver/widgets/WidgetContainer;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRootX()I
    .locals 2

    .line 882
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 892
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 928
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 966
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5

    .line 2160
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    move-object v2, p0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 2163
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 2164
    :cond_0
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_2

    .line 2165
    :cond_1
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 2166
    :goto_2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move-object v0, v2

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    move-object v4, v1

    goto :goto_3

    .line 2170
    :cond_3
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    .line 2171
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-eq v4, v2, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1562
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2070
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 629
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 759
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getWrapHeight()I
    .locals 1

    .line 828
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return v0
.end method

.method public getWrapWidth()I
    .locals 1

    .line 807
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 741
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 750
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasAncestor(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 4

    .line 498
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_2

    return v1

    .line 509
    :cond_2
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-ne v0, v2, :cond_3

    return v1

    .line 513
    :cond_3
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v3
.end method

.method public hasBaseline()Z
    .locals 1

    .line 975
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 7

    .line 1596
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1597
    invoke-virtual {p2, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1598
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    return-void
.end method

.method public isFullyResolved()Z
    .locals 2

    .line 355
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 356
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 357
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 358
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeightWrapContent()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 2103
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 2146
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .line 478
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 483
    instance-of v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 486
    :cond_1
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isRoot()Z
    .locals 1

    .line 458
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRootContainer()Z
    .locals 1

    .line 468
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .line 120
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpreadWidth()Z
    .locals 3

    .line 112
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isWidthWrapContent()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public reset()V
    .locals 6

    .line 247
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 248
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 249
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 250
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 251
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 252
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 253
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 254
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    .line 256
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/4 v2, 0x0

    .line 257
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 258
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 259
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, -0x1

    .line 260
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 261
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 262
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 263
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 264
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 265
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 266
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 267
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 268
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 269
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 270
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 271
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 272
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 273
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 274
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 275
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 276
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    .line 277
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 278
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 279
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 280
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 281
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 282
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 283
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 284
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 285
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 286
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 287
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 288
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 289
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aput v3, v0, v5

    .line 290
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 291
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 292
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 293
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aput v3, v0, v5

    .line 294
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 295
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 296
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 297
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 298
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 299
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 300
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 301
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 302
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 303
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 304
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->reset()V

    .line 307
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroid/support/constraint/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->reset()V

    :cond_1
    return-void
.end method

.method public resetAllConstraints()V
    .locals 2

    .line 1861
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1862
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1863
    sget v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1864
    instance-of v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    return-void

    .line 1867
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 1868
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1869
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_0

    .line 1870
    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1871
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1874
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_4

    .line 1875
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1876
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1877
    :cond_3
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1878
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public resetAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 8

    .line 1890
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1893
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1898
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1899
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1900
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1901
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1902
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1903
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1904
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1907
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1908
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 1909
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1910
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1912
    :cond_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1913
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1914
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1915
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1917
    :cond_2
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1918
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    :cond_3
    if-ne p1, v5, :cond_5

    .line 1920
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1921
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1922
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1923
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1925
    :cond_4
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    :cond_5
    if-ne p1, v6, :cond_7

    .line 1927
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1928
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 1929
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1930
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1932
    :cond_6
    iput v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1938
    :cond_9
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1939
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1934
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1935
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1942
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    return-void
.end method

.method public resetAnchors()V
    .locals 3

    .line 1949
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1950
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1952
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1956
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1957
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1958
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetAnchors(I)V
    .locals 4

    .line 1966
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 1969
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1973
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1974
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1975
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 1976
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1977
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto :goto_1

    .line 1979
    :cond_1
    sget v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1981
    :goto_1
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resetResolutionNodes()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 429
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 430
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 431
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 432
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 433
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 434
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 435
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0

    .line 1469
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0

    .line 1479
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 1492
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1494
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0

    .line 645
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .locals 6

    .line 665
    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 666
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 667
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    .line 668
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    .line 669
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".top"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".right"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 674
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p1

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".baseline"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 1

    .line 1381
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1382
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1383
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1385
    :cond_0
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1386
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_1

    .line 1387
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0

    .line 1288
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1289
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 1232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 1233
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 1235
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 1236
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 1238
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 1245
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 1248
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 1249
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1252
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1253
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 1256
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 1258
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1266
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1269
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 1277
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1278
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    :cond_7
    return-void

    .line 1227
    :cond_8
    :goto_2
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return-void
.end method

.method public setDrawHeight(I)V
    .locals 0

    .line 1157
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 1

    .line 1116
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1117
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1118
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1119
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setDrawWidth(I)V
    .locals 0

    .line 1148
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return-void
.end method

.method public setDrawX(I)V
    .locals 1

    .line 1128
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1129
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setDrawY(I)V
    .locals 1

    .line 1138
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1139
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setFrame(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1403
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1404
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1406
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1407
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1408
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    return-void

    .line 1413
    :cond_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge p3, p1, :cond_1

    .line 1414
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1416
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_2

    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge p4, p1, :cond_2

    .line 1417
    iget p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1420
    :cond_2
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1421
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1423
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_3

    .line 1424
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1426
    :cond_3
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, p2, :cond_4

    .line 1427
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 1

    .line 1053
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1067
    :pswitch_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 1063
    :pswitch_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 1059
    :pswitch_2
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 1055
    :pswitch_3
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeight(I)V
    .locals 1

    .line 1178
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1179
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v0, :cond_0

    .line 1180
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0

    .line 574
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0

    .line 1317
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0

    .line 1532
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 0

    .line 1442
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    sub-int/2addr p2, p1

    .line 1443
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1444
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, p2, :cond_0

    .line 1445
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 2079
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2080
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2081
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 0

    .line 1193
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1194
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1195
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1196
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 1197
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1198
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_0
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2

    .line 1513
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2

    .line 108
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1350
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1352
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1337
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1339
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0

    .line 1042
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1043
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    return-void
.end method

.method public setOrigin(II)V
    .locals 0

    .line 1031
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1032
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 611
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0

    .line 1327
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0

    .line 1552
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 0

    .line 1456
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p2, p1

    .line 1457
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1458
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_0

    .line 1459
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2

    .line 2091
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2092
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2093
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 0

    .line 1211
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1212
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1213
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1214
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 1215
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 1216
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_0
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2

    .line 1522
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 620
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1166
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1167
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_0

    .line 1168
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0

    .line 558
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return-void
.end method

.method public setWrapHeight(I)V
    .locals 0

    .line 1371
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0

    .line 1362
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 1012
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 1021
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5

    .line 2396
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2398
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 2400
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2401
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne p3, v3, :cond_1

    .line 2403
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2408
    :cond_1
    :goto_0
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez p3, :cond_3

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_3

    .line 2409
    :cond_2
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2410
    :cond_3
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_5

    .line 2411
    :cond_4
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2415
    :cond_5
    :goto_1
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_8

    .line 2416
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 2417
    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_8

    .line 2419
    :cond_6
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2420
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2421
    :cond_7
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2422
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2423
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2428
    :cond_8
    :goto_2
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_a

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    .line 2430
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 2432
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2433
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2437
    :cond_a
    :goto_3
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_c

    .line 2438
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez p3, :cond_b

    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p3, :cond_b

    .line 2439
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4

    .line 2440
    :cond_b
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p3, :cond_c

    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez p3, :cond_c

    .line 2441
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v1, p3

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2442
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2446
    :cond_c
    :goto_4
    iget p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v3, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 2447
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, p1

    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2448
    iput v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawPosition()V
    .locals 5

    .line 1085
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1086
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1087
    iget v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 1088
    iget v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 1089
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1090
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v2, v0

    .line 1091
    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v3, v1

    .line 1092
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 6

    .line 2720
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2721
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2722
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2723
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2736
    :cond_1
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    return-void
.end method

.method public updateResolutionNodes()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
