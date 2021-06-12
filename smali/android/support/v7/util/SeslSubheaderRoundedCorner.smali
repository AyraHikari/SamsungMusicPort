.class public Landroid/support/v7/util/SeslSubheaderRoundedCorner;
.super Landroid/support/v7/util/SeslRoundedCorner;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "SeslSubheaderRoundedCorner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public drawRoundedCorner(IIIILandroid/graphics/Canvas;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 40
    iget-boolean p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 42
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_0
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v1, v2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    :cond_1
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v1, v2

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_2
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    .line 56
    iget-boolean p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    :cond_3
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr p4, v0

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    :cond_4
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    .line 67
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    .line 87
    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 90
    iget-boolean p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    :cond_1
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    :cond_2
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 100
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    :cond_3
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    .line 106
    iget-boolean p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_4

    .line 107
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    :cond_4
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    :cond_5
    iget p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 117
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object p1, p0, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method
