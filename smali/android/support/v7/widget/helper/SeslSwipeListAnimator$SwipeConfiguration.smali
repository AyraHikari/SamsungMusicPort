.class public Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/SeslSwipeListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwipeConfiguration"
.end annotation


# instance fields
.field public UNSET_VALUE:I

.field public colorLeftToRight:I

.field public colorRightToLeft:I

.field public drawableLeftToRight:Landroid/graphics/drawable/Drawable;

.field public drawablePadding:I

.field public drawableRightToLeft:Landroid/graphics/drawable/Drawable;

.field public textColor:I

.field public textLeftToRight:Ljava/lang/String;

.field public textRightToLeft:Ljava/lang/String;

.field public textSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 318
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    .line 321
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    .line 322
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    .line 325
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    .line 326
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    .line 327
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    return-void
.end method
