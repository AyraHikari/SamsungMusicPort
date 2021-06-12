.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 0

    .line 1526
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1527
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1528
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    sub-float/2addr p3, p2

    .line 1529
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1534
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget v0, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method
