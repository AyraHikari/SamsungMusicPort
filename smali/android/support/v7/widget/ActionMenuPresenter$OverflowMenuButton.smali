.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverflowMenuButton"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeBackground:Landroid/view/ViewGroup;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeText:Landroid/widget/TextView;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInnerView:Landroid/view/View;

.field private final mTempPts:[F

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 736
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 737
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 727
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 739
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$000(Landroid/support/v7/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    .line 740
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_1

    .line 744
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_badge_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 749
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 750
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    .line 751
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const-string p1, "layout_inflater"

    .line 756
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 757
    sget p2, Landroid/support/v7/appcompat/R$layout;->sesl_action_menu_item_badge:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    .line 759
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 760
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getInnerView()Landroid/view/View;
    .locals 1

    .line 805
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 768
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 769
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 770
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_menu_item_badge_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 769
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 771
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 772
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_badge_default_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 773
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$dimen;->sesl_badge_additional_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_menu_item_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 775
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_menu_item_badge_end_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 776
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_0

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    .line 781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_badge_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 786
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 787
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_badge_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 793
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 794
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_3

    .line 795
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_3

    .line 799
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBadgeText(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    const/16 p2, 0x63

    :cond_0
    if-nez p1, :cond_2

    const-string v0, ""

    .line 822
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 825
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$100(Landroid/support/v7/widget/ActionMenuPresenter;)Ljava/text/NumberFormat;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    .line 828
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_badge_default_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 831
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_badge_additional_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 832
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 833
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 834
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    if-lez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 836
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 837
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_5

    .line 838
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    iget-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mBadgeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 841
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;

    if-eqz p1, :cond_5

    .line 842
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    iget-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
