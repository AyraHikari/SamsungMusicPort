.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$ButtonBarLayout;,
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 104
    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 125
    iput v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 129
    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 186
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 188
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 189
    new-instance p3, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 191
    sget-object p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 194
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 195
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 197
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 198
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 199
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 200
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 201
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 202
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-virtual {p2, v0}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method private adjustButtonsPadding()V
    .locals 5

    .line 690
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 691
    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_dialog_button_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 693
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 694
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    .line 695
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 697
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 698
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    .line 699
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 701
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 702
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/AppCompatButton;->setTextSize(IF)V

    .line 703
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    :cond_2
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 219
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 224
    invoke-static {v3}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/support/v7/widget/AppCompatButton;)V
    .locals 2

    .line 924
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 925
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 926
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 927
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .locals 3

    .line 985
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/4 v0, 0x0

    mul-float p2, p2, v1

    .line 989
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 788
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 787
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 792
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 791
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_1

    .line 440
    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 441
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 444
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 450
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 451
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 456
    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    .line 457
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 460
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private selectContentView()I
    .locals 2

    .line 239
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 240
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 242
    :cond_0
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 243
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 245
    :cond_1
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 4

    .line 570
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 571
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 573
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 575
    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_8

    .line 581
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2

    .line 586
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 590
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_8

    .line 598
    :cond_4
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz p3, :cond_5

    .line 600
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/AlertController$2;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 610
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance p3, Landroid/support/v7/app/AlertController$3;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 616
    :cond_5
    iget-object p3, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p3, :cond_6

    .line 618
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Landroid/support/v7/app/AlertController$4;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 629
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance p3, Landroid/support/v7/app/AlertController$5;

    invoke-direct {p3, p0, v0, p2}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 641
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 12

    .line 798
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "show_button_background"

    .line 799
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 802
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 803
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010031

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, -0x1

    .line 805
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_1

    .line 806
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x4

    .line 814
    sget v7, Landroid/support/v7/appcompat/R$id;->button1:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/AppCompatButton;

    iput-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    .line 815
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    iget-object v8, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-le v7, v8, :cond_3

    .line 818
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v7, :cond_2

    .line 819
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v7, v0, v4}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(ZI)V

    goto :goto_1

    .line 821
    :cond_2
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 825
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    sget v9, Landroid/support/v7/appcompat/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 830
    :cond_4
    :goto_1
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_5

    .line 831
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    const/4 v7, 0x0

    goto :goto_2

    .line 833
    :cond_5
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    const/4 v7, 0x1

    .line 838
    :goto_2
    sget v10, Landroid/support/v7/appcompat/R$id;->button2:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/AppCompatButton;

    iput-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    .line 839
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v10, v8, :cond_7

    .line 842
    iget v10, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v10, :cond_6

    .line 843
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v10, v0, v4}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(ZI)V

    goto :goto_3

    .line 845
    :cond_6
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(Z)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 849
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    sget v11, Landroid/support/v7/appcompat/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 854
    :cond_8
    :goto_3
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 855
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_4

    .line 857
    :cond_9
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x2

    .line 863
    :goto_4
    sget v10, Landroid/support/v7/appcompat/R$id;->button3:I

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/AppCompatButton;

    iput-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    .line 864
    iget-object v10, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    iget-object v11, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v10, v8, :cond_b

    .line 867
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_a

    .line 868
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v3, v0, v4}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(ZI)V

    goto :goto_5

    .line 870
    :cond_a
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/AppCompatButton;->seslSetButtonShapeEnabled(Z)V

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    .line 874
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    sget v3, Landroid/support/v7/appcompat/R$drawable;->sesl_dialog_show_button_background:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 879
    :cond_c
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 880
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    goto :goto_6

    .line 882
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatButton;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x4

    .line 888
    :goto_6
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne v7, v1, :cond_e

    .line 894
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/support/v7/widget/AppCompatButton;)V

    goto :goto_7

    :cond_e
    if-ne v7, v5, :cond_f

    .line 896
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/support/v7/widget/AppCompatButton;)V

    goto :goto_7

    :cond_f
    if-ne v7, v6, :cond_10

    .line 898
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/support/v7/widget/AppCompatButton;)V

    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_12

    .line 904
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 907
    :cond_12
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroid/support/v7/appcompat/R$id;->sem_divider1:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 908
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->sem_divider2:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 909
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v3}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    .line 910
    :goto_9
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    .line 911
    :goto_a
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    :goto_b
    if-eqz v0, :cond_18

    if-eqz v3, :cond_16

    if-nez v4, :cond_17

    :cond_16
    if-eqz v3, :cond_18

    if-eqz v1, :cond_18

    .line 915
    :cond_17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    if-eqz p1, :cond_19

    if-eqz v4, :cond_19

    if-eqz v1, :cond_19

    .line 919
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 757
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 758
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 759
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 762
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 763
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 768
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 773
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 774
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 775
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 777
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 650
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    goto :goto_0

    .line 652
    :cond_0
    iget v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 654
    iget v2, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 660
    invoke-static {v0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 661
    :cond_3
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    .line 666
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 667
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_5

    .line 670
    iget v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 674
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 676
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 677
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 680
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    iput v1, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    .line 708
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 713
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 716
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 717
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 721
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 722
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_3

    .line 724
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 725
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$dimen;->sesl_dialog_title_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertController;->checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 733
    iget p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz p1, :cond_1

    .line 734
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 736
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 740
    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 741
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 742
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 743
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 740
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 744
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 748
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 749
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupView()V
    .locals 7

    .line 464
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 465
    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 466
    sget v2, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 467
    sget v3, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 471
    sget v4, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 472
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 474
    sget v4, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 475
    sget v5, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 476
    sget v6, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 479
    invoke-direct {p0, v4, v1}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 480
    invoke-direct {p0, v5, v2}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 481
    invoke-direct {p0, v6, v3}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 483
    invoke-direct {p0, v2}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 484
    invoke-direct {p0, v3}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 485
    invoke-direct {p0, v1}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 492
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 506
    :goto_2
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->adjustButtonsPadding()V

    if-eqz v1, :cond_3

    .line 510
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v4, :cond_3

    .line 511
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 534
    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v4, v4, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v4, :cond_4

    .line 535
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    check-cast v4, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_4
    if-nez v0, :cond_7

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    :goto_3
    if-eqz v0, :cond_7

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v1, v3

    const/4 v3, 0x3

    .line 544
    invoke-direct {p0, v2, v0, v1, v3}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 549
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 550
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 551
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    invoke-static {v0, v6}, Landroid/support/v4/widget/SeslAdapterViewReflector;->setBottomColor(Landroid/widget/AdapterView;I)V

    .line 555
    iget v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_8

    .line 557
    invoke-virtual {v0, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 559
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 560
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$dimen;->sesl_select_dialog_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_8
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 3

    .line 180
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 182
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getButton(I)Landroid/support/v7/widget/AppCompatButton;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 407
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/support/v7/widget/AppCompatButton;

    return-object p1

    .line 409
    :pswitch_1
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/support/v7/widget/AppCompatButton;

    return-object p1

    .line 411
    :pswitch_2
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/support/v7/widget/AppCompatButton;

    return-object p1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .line 395
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 396
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 397
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 401
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    .line 234
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 235
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 419
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 424
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 324
    iget-object p4, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 331
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 335
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 336
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 340
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 341
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .line 305
    iput p1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 259
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 357
    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 375
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 378
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 263
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 264
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 249
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 274
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 275
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 282
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 284
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 293
    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 295
    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 296
    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 297
    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 298
    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
