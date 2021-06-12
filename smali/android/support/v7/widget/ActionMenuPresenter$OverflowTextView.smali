.class Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowTextView"
.end annotation


# instance fields
.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5

    .line 970
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 971
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setClickable(Z)V

    .line 974
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setFocusable(Z)V

    .line 976
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 978
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 980
    invoke-static {p0, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 981
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 983
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$string;->sesl_more_item_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 985
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v3, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {p2, v3, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 986
    iget p2, v2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {p1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->access$302(Landroid/support/v7/widget/ActionMenuPresenter;Z)Z

    .line 987
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 988
    sget p1, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 990
    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->setBackgroundResource(I)V

    .line 994
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-le p1, p2, :cond_2

    .line 995
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->seslSetButtonShapeEnabled(Z)V

    goto :goto_1

    .line 997
    :cond_2
    new-instance p1, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 998
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1004
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1005
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz p1, :cond_0

    .line 1006
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1012
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 1013
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz p1, :cond_0

    .line 1014
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1020
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->playSoundEffect(I)V

    .line 1025
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowTextView;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method
