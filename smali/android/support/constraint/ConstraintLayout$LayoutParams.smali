.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 2983
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 2109
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 2119
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v0, 0x0

    .line 2174
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v1, 0x0

    .line 2179
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2234
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v3, 0x0

    .line 2244
    iput-object v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v1, 0x1

    .line 2254
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2345
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2592
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2109
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2119
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v2, 0x0

    .line 2174
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v3, 0x0

    .line 2179
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2234
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    .line 2244
    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v5, 0x1

    .line 2254
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2345
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2593
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2594
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 2596
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 2597
    sget-object v6, Landroid/support/constraint/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const/4 v7, -0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2689
    :pswitch_1
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_3

    .line 2685
    :pswitch_2
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_3

    .line 2835
    :pswitch_3
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_3

    .line 2831
    :pswitch_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_3

    .line 2827
    :pswitch_5
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_3

    .line 2823
    :pswitch_6
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_3

    .line 2773
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 2774
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2775
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2776
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2777
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2778
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2

    .line 2780
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    .line 2781
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2782
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_1

    :cond_0
    const-string v8, "H"

    .line 2783
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2784
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 2790
    :goto_2
    iget-object v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_4

    .line 2792
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2793
    iget-object v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2794
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 2796
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 2797
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v6, v3

    if-lez v7, :cond_5

    .line 2799
    iget v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-ne v7, v5, :cond_3

    div-float/2addr v6, v4

    .line 2800
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v4, v6

    .line 2802
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 2810
    :cond_4
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2811
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 2813
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 2911
    :pswitch_8
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    goto/16 :goto_3

    .line 2901
    :pswitch_9
    :try_start_2
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    nop

    .line 2903
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 2905
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto/16 :goto_3

    .line 2890
    :pswitch_a
    :try_start_3
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    nop

    .line 2892
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 2894
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    goto/16 :goto_3

    .line 2885
    :pswitch_b
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    goto/16 :goto_3

    .line 2875
    :pswitch_c
    :try_start_4
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    nop

    .line 2877
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 2879
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto/16 :goto_3

    .line 2864
    :pswitch_d
    :try_start_5
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    nop

    .line 2866
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 2868
    iput v7, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    goto/16 :goto_3

    .line 2855
    :pswitch_e
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2856
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v4, v5, :cond_5

    const-string v4, "ConstraintLayout"

    const-string v6, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 2857
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2847
    :pswitch_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2848
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v4, v5, :cond_5

    const-string v4, "ConstraintLayout"

    const-string v6, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 2849
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2769
    :pswitch_10
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_3

    .line 2765
    :pswitch_11
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_3

    .line 2843
    :pswitch_12
    iget-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    goto/16 :goto_3

    .line 2839
    :pswitch_13
    iget-boolean v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    goto/16 :goto_3

    .line 2761
    :pswitch_14
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_3

    .line 2757
    :pswitch_15
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_3

    .line 2753
    :pswitch_16
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_3

    .line 2749
    :pswitch_17
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_3

    .line 2745
    :pswitch_18
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_3

    .line 2741
    :pswitch_19
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_3

    .line 2734
    :pswitch_1a
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2735
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v6, v0, :cond_5

    .line 2736
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_3

    .line 2727
    :pswitch_1b
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2728
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v6, v0, :cond_5

    .line 2729
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_3

    .line 2720
    :pswitch_1c
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2721
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v6, v0, :cond_5

    .line 2722
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_3

    .line 2713
    :pswitch_1d
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2714
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v6, v0, :cond_5

    .line 2715
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_3

    .line 2660
    :pswitch_1e
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2661
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v0, :cond_5

    .line 2662
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_3

    .line 2653
    :pswitch_1f
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2654
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v0, :cond_5

    .line 2655
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_3

    .line 2646
    :pswitch_20
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2647
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v0, :cond_5

    .line 2648
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_3

    .line 2639
    :pswitch_21
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2640
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v0, :cond_5

    .line 2641
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_3

    .line 2632
    :pswitch_22
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2633
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v0, :cond_5

    .line 2634
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_3

    .line 2625
    :pswitch_23
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2626
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v6, v0, :cond_5

    .line 2627
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_3

    .line 2618
    :pswitch_24
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2619
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v6, v0, :cond_5

    .line 2620
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_3

    .line 2611
    :pswitch_25
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2612
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v6, v0, :cond_5

    .line 2613
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_3

    .line 2604
    :pswitch_26
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2605
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v6, v0, :cond_5

    .line 2606
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto :goto_3

    .line 2703
    :pswitch_27
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto :goto_3

    .line 2698
    :pswitch_28
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto :goto_3

    .line 2693
    :pswitch_29
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto :goto_3

    .line 2678
    :pswitch_2a
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2679
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_5

    .line 2680
    iget v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    sub-float v4, v6, v4

    rem-float/2addr v4, v6

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    goto :goto_3

    .line 2674
    :pswitch_2b
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    goto :goto_3

    .line 2667
    :pswitch_2c
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2668
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v6, v0, :cond_5

    .line 2669
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto :goto_3

    .line 2708
    :pswitch_2d
    iget v6, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    :catch_4
    :cond_5
    :goto_3
    :pswitch_2e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2936
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2937
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 6

    .line 2421
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 2109
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2119
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v2, 0x0

    .line 2174
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v3, 0x0

    .line 2179
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2234
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    .line 2244
    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v3, 0x1

    .line 2254
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2345
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    .line 2422
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2423
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2424
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2425
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2426
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2427
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2428
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2429
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2430
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2431
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2432
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2433
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2434
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2435
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2436
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2437
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2438
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2439
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2440
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2441
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2442
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2443
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2444
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2445
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2446
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2447
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2448
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2449
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2450
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2451
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2452
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2453
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2454
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2455
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2456
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2457
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2458
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2459
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2460
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2461
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2462
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2463
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2464
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2465
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2466
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2467
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2468
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2469
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2470
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2471
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2472
    iget-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2473
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2474
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2475
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2476
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2477
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2478
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2479
    iget v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2480
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 2987
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 2109
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2114
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2119
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2124
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2129
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2134
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2139
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2144
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2149
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2154
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2159
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2164
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2169
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v1, 0x0

    .line 2174
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v2, 0x0

    .line 2179
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2184
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2189
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2194
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2199
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2204
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2209
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2214
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2219
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2224
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2229
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 2234
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2239
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v4, 0x0

    .line 2244
    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2249
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v2, 0x1

    .line 2254
    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2260
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2266
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2278
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2290
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2303
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2316
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2322
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2328
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2334
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2340
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2345
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2350
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2356
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2362
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2364
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 2373
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2382
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2385
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2386
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2388
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2389
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2390
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2391
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2393
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2394
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2395
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2396
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2397
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2398
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2399
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2405
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2413
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 2408
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    .line 2409
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    :cond_0
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 2996
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 2997
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 2999
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 p1, -0x1

    .line 3001
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3002
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3003
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3004
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3006
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3007
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3008
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3009
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3010
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3012
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3013
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3014
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3016
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 3020
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, p1, :cond_1

    .line 3021
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 3023
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, p1, :cond_2

    .line 3024
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_1

    .line 3027
    :cond_2
    :goto_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, p1, :cond_3

    .line 3028
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    const/4 v3, 0x1

    .line 3031
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, p1, :cond_4

    .line 3032
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    const/4 v3, 0x1

    .line 3035
    :cond_4
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, p1, :cond_5

    .line 3036
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3038
    :cond_5
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, p1, :cond_6

    .line 3039
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    .line 3042
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float v3, v2, v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 3046
    :cond_7
    iget-boolean v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    if-ne v3, v4, :cond_10

    .line 3047
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 3048
    iget v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 3049
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3050
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    goto :goto_3

    .line 3051
    :cond_8
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-eq v2, p1, :cond_9

    .line 3052
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3053
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3054
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_3

    .line 3055
    :cond_9
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v2, p1, :cond_10

    .line 3056
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 3057
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 3058
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_3

    .line 3062
    :cond_a
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v2, p1, :cond_b

    .line 3063
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3065
    :cond_b
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v2, p1, :cond_c

    .line 3066
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3068
    :cond_c
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v2, p1, :cond_d

    .line 3069
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3071
    :cond_d
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v2, p1, :cond_e

    .line 3072
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3074
    :cond_e
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v2, p1, :cond_f

    .line 3075
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 3077
    :cond_f
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v2, p1, :cond_10

    .line 3078
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 3082
    :cond_10
    :goto_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v2, p1, :cond_14

    .line 3084
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v2, p1, :cond_11

    .line 3085
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 3086
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3087
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 3089
    :cond_11
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v2, p1, :cond_12

    .line 3090
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 3091
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    .line 3092
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 3095
    :cond_12
    :goto_4
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v1, p1, :cond_13

    .line 3096
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 3097
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3098
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 3100
    :cond_13
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v1, p1, :cond_14

    .line 3101
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 3102
    iget p1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 3103
    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    :cond_14
    :goto_5
    return-void
.end method

.method public validate()V
    .locals 5

    const/4 v0, 0x0

    .line 2941
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/4 v1, 0x1

    .line 2942
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2943
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2944
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v2, :cond_0

    .line 2945
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2946
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2948
    :cond_0
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v2, :cond_1

    .line 2949
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2950
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2952
    :cond_1
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v2, v4, :cond_3

    .line 2953
    :cond_2
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2957
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v2, v1, :cond_3

    .line 2958
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 2959
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2962
    :cond_3
    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v2, v4, :cond_5

    .line 2963
    :cond_4
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2967
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v0, v1, :cond_5

    .line 2968
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 2969
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2972
    :cond_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v4, :cond_8

    .line 2973
    :cond_6
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2974
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2975
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2976
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_7

    .line 2977
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2979
    :cond_7
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    :cond_8
    return-void
.end method
