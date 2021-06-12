.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowImageView"
.end annotation


# instance fields
.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    .line 852
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 853
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 855
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setClickable(Z)V

    .line 856
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setFocusable(Z)V

    .line 859
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setLongClickable(Z)V

    .line 861
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->access$202(Landroid/support/v7/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 862
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 865
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-gt p1, p2, :cond_0

    .line 866
    new-instance p1, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 867
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    :cond_0
    return-void
.end method


# virtual methods
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

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 873
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 876
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->View:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 879
    sget v0, Landroid/support/v7/appcompat/R$styleable;->View_android_minHeight:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setMinimumHeight(I)V

    .line 882
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/v7/appcompat/R$string;->sesl_action_menu_overflow_description:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$202(Landroid/support/v7/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 883
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 886
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 889
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_android_src:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz p1, :cond_1

    .line 897
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateOverflowButtonBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 904
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 905
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 912
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->playSoundEffect(I)V

    .line 919
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 932
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceActionBarPosX(Z)V

    .line 933
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceBelow(Z)V

    .line 934
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .line 939
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    .line 942
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 943
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 945
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getWidth()I

    move-result p2

    .line 946
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getHeight()I

    move-result p4

    .line 947
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 948
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr p2, v0

    .line 950
    invoke-virtual {p3, v0, v1, p2, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return p1
.end method
