.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 17

    move-object/from16 v0, p1

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 154
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 155
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 156
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 162
    :goto_0
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 163
    invoke-static {v0, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 165
    :goto_1
    iget v10, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_13

    .line 167
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 214
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 215
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 220
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 222
    :cond_4
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 226
    :cond_5
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 228
    :cond_6
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 232
    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 234
    :cond_8
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 239
    :cond_9
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 240
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 241
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 243
    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_3

    .line 246
    :cond_a
    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 247
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 248
    invoke-virtual {v1, v3, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    int-to-float v9, v7

    .line 249
    invoke-virtual {v3, v1, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 250
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_3

    .line 169
    :cond_b
    :goto_2
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    .line 170
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 171
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_c

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 175
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_3

    .line 177
    :cond_d
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_f

    .line 178
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 179
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_e

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_3

    .line 183
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 185
    :cond_f
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    .line 186
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 187
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    if-eqz v6, :cond_10

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 192
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_3

    .line 194
    :cond_11
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    .line 195
    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 196
    invoke-virtual {v3, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_12

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_3

    .line 203
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 258
    :cond_13
    :goto_3
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_14

    .line 259
    invoke-static {v0, v8}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v16, 0x1

    goto :goto_4

    :cond_14
    const/16 v16, 0x0

    .line 261
    :goto_4
    iget v1, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_26

    iget v1, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v1, v12, :cond_26

    .line 264
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v3, :cond_1e

    if-eqz v16, :cond_15

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v16, :cond_26

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 323
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 324
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 329
    :cond_16
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 331
    :cond_17
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    .line 335
    :cond_18
    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 337
    :cond_19
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v0, v1

    .line 341
    invoke-virtual {v2, v4, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 343
    :cond_1b
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 348
    :cond_1c
    iget v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

    .line 349
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_a

    .line 354
    :cond_1d
    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 355
    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 356
    invoke-virtual {v2, v4, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    int-to-float v3, v1

    .line 357
    invoke-virtual {v4, v2, v3}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 358
    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 359
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_26

    .line 360
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 266
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    .line 267
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 268
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_1f

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_6

    .line 272
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 274
    :goto_6
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 275
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 276
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 277
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v0, v0

    .line 276
    invoke-virtual {v2, v8, v1, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 279
    :cond_20
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_22

    .line 280
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 281
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_21

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_7

    .line 285
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 287
    :goto_7
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_26

    .line 288
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_a

    .line 290
    :cond_22
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_24

    .line 291
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 292
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_23

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_8

    .line 296
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 298
    :goto_8
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_26

    .line 299
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_a

    .line 301
    :cond_24
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 302
    invoke-virtual {v2, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 303
    invoke-virtual {v4, v15}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    if-eqz v6, :cond_25

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_9

    .line 310
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 313
    :goto_9
    iget v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_26

    .line 314
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    :cond_26
    :goto_a
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 382
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 383
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 384
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 385
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 386
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 393
    iget v7, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 394
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 395
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v8, p0

    .line 397
    iget-object v1, v8, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-nez p2, :cond_3

    .line 403
    iget v10, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 404
    :goto_0
    iget v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v11, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 405
    :goto_1
    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v6, v1, :cond_2

    :goto_2
    const/4 v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    .line 407
    :cond_3
    iget v10, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 408
    :goto_3
    iget v11, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v11, v9, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 409
    :goto_4
    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v6, v1, :cond_2

    goto :goto_2

    :goto_5
    move-object v13, v2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    if-nez v12, :cond_12

    .line 422
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    move/from16 v16, v12

    const/16 v12, 0x8

    if-eq v8, v12, :cond_8

    add-int/lit8 v6, v6, 0x1

    if-nez p2, :cond_6

    .line 425
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v14, v8

    goto :goto_7

    .line 427
    :cond_6
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v14, v8

    :goto_7
    if-eq v13, v4, :cond_7

    .line 430
    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v14, v8

    .line 432
    :cond_7
    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    .line 433
    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v17, p3, 0x1

    aget-object v8, v8, v17

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v15, v8

    .line 436
    :cond_8
    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    .line 438
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_e

    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_e

    add-int/lit8 v9, v9, 0x1

    if-nez p2, :cond_b

    .line 443
    iget v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    return v8

    :cond_9
    const/4 v8, 0x0

    .line 445
    iget v12, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v12, :cond_a

    iget v12, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v12, :cond_e

    :cond_a
    return v8

    :cond_b
    const/4 v8, 0x0

    .line 449
    iget v12, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v12, :cond_c

    return v8

    .line 451
    :cond_c
    iget v12, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v12, :cond_d

    iget v12, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v12, :cond_e

    :cond_d
    return v8

    .line 458
    :cond_e
    iget-object v8, v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_10

    .line 460
    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 461
    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_10

    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v12, v12, p3

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v12, v13, :cond_f

    goto :goto_8

    :cond_f
    move-object/from16 v18, v8

    goto :goto_9

    :cond_10
    :goto_8
    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_11

    move/from16 v12, v16

    move-object/from16 v13, v18

    goto/16 :goto_6

    :cond_11
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 474
    :cond_12
    iget-object v8, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, p3

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v8

    .line 475
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    move-object/from16 v19, v2

    .line 477
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-eqz v2, :cond_36

    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v2, :cond_13

    goto/16 :goto_18

    .line 483
    :cond_13
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    const/4 v0, 0x1

    if-eq v2, v0, :cond_14

    iget-object v2, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v2, v0, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x0

    if-lez v9, :cond_15

    if-eq v9, v6, :cond_15

    return v0

    :cond_15
    if-nez v1, :cond_17

    if-nez v10, :cond_17

    if-eqz v11, :cond_16

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    :goto_a
    if-eqz v4, :cond_18

    .line 497
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-eqz v5, :cond_19

    .line 500
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 504
    :cond_19
    :goto_c
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 505
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    cmpg-float v16, v2, v3

    if-gez v16, :cond_1a

    sub-float/2addr v3, v2

    sub-float/2addr v3, v14

    goto :goto_d

    :cond_1a
    sub-float v3, v2, v3

    sub-float/2addr v3, v14

    :goto_d
    const-wide/16 v16, 0x1

    if-lez v9, :cond_23

    if-ne v9, v6, :cond_23

    .line 514
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_1b

    const/4 v1, 0x0

    return v1

    :cond_1b
    add-float/2addr v3, v14

    sub-float/2addr v3, v15

    if-eqz v10, :cond_1c

    sub-float/2addr v15, v0

    sub-float/2addr v3, v15

    :cond_1c
    if-eqz v10, :cond_1d

    .line 525
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 526
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1d

    .line 528
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    :cond_1d
    :goto_e
    if-eqz v4, :cond_22

    .line 532
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_1e

    .line 533
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v10, v10, v16

    iput-wide v10, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 534
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v10, v10, v16

    iput-wide v10, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 535
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v10, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v10, v10, v16

    iput-wide v10, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 537
    :cond_1e
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-nez v0, :cond_20

    if-ne v4, v5, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    move-object/from16 v13, p1

    goto :goto_10

    :cond_20
    :goto_f
    int-to-float v1, v9

    div-float v1, v3, v1

    const/4 v6, 0x0

    cmpl-float v10, v7, v6

    if-lez v10, :cond_21

    .line 541
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v1, v1, p2

    mul-float v1, v1, v3

    div-float/2addr v1, v7

    .line 543
    :cond_21
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v2, v10

    .line 544
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v10, v11, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 546
    iget-object v10, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget-object v11, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float/2addr v2, v1

    invoke-virtual {v10, v11, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 548
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    move-object/from16 v13, p1

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 549
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 551
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    :goto_10
    move-object v4, v0

    goto/16 :goto_e

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_23
    move-object/from16 v13, p1

    cmpg-float v7, v3, v14

    if-gez v7, :cond_24

    const/4 v7, 0x0

    return v7

    :cond_24
    if-eqz v1, :cond_2a

    sub-float/2addr v3, v0

    .line 566
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v0

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    :goto_11
    if-eqz v4, :cond_29

    .line 568
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v0, :cond_25

    .line 569
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v6, v6, v16

    iput-wide v6, v0, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 570
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v6, v6, v16

    iput-wide v6, v0, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 571
    sget-object v0, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v6, v6, v16

    iput-wide v6, v0, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 573
    :cond_25
    iget-object v0, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, p2

    if-nez v0, :cond_26

    if-ne v4, v5, :cond_28

    :cond_26
    if-nez p2, :cond_27

    .line 577
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_12

    .line 579
    :cond_27
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 581
    :goto_12
    iget-object v3, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 582
    iget-object v3, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v3, v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 584
    iget-object v3, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iget-object v6, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float/2addr v2, v1

    invoke-virtual {v3, v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 586
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 587
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 589
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    :cond_28
    move-object v4, v0

    goto :goto_11

    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_17

    :cond_2a
    if-nez v10, :cond_2b

    if-eqz v11, :cond_29

    :cond_2b
    if-eqz v10, :cond_2c

    sub-float/2addr v3, v0

    goto :goto_13

    :cond_2c
    if-eqz v11, :cond_2d

    sub-float/2addr v3, v0

    :cond_2d
    :goto_13
    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    div-float v0, v3, v0

    if-eqz v11, :cond_2f

    const/4 v1, 0x1

    if-le v6, v1, :cond_2e

    add-int/lit8 v0, v6, -0x1

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_14

    :cond_2e
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v3, v0

    :cond_2f
    :goto_14
    add-float v1, v2, v0

    if-eqz v11, :cond_30

    const/4 v3, 0x1

    if-le v6, v3, :cond_30

    .line 610
    iget-object v1, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    :cond_30
    if-eqz v10, :cond_31

    if-eqz v4, :cond_31

    .line 614
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_31
    :goto_15
    if-eqz v4, :cond_29

    .line 618
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_32

    .line 619
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v6, v6, v16

    iput-wide v6, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 620
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v6, v6, v16

    iput-wide v6, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 621
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v6, v6, v16

    iput-wide v6, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 623
    :cond_32
    iget-object v2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v2, v2, p2

    if-nez v2, :cond_33

    if-ne v4, v5, :cond_35

    :cond_33
    if-nez p2, :cond_34

    .line 627
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_16

    .line 629
    :cond_34
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 631
    :goto_16
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v6, v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 633
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v12

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v8, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v9, v1, v3

    invoke-virtual {v6, v7, v9}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 635
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 636
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    add-float/2addr v3, v0

    add-float/2addr v1, v3

    :cond_35
    move-object v4, v2

    goto :goto_15

    :goto_17
    return v0

    :cond_36
    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 67
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p0

    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr p0, v1

    .line 86
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 91
    :cond_1
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v1, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    :cond_3
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .locals 4

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 113
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 114
    iget-object p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object p0, p0, v3

    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    .line 122
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz p1, :cond_4

    return v2

    .line 125
    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p1, :cond_5

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    .line 129
    :cond_6
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz p1, :cond_7

    return v2

    .line 132
    :cond_7
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p1, :cond_9

    iget p0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    :goto_1
    return v2
.end method
