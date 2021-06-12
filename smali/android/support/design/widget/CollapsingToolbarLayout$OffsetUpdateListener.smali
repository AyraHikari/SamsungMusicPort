.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 3

    .line 1765
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    .line 1767
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1768
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getCollapsedHeight()F

    move-result v1

    invoke-static {p1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    .line 1769
    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v1, :cond_2

    .line 1770
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 1771
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    goto :goto_0

    .line 1773
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    goto :goto_0

    .line 1777
    :cond_1
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1786
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1787
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1788
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1790
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851eb    # 0.17999999f

    mul-float v1, v1, v2

    .line 1792
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float v2, v2, v3

    .line 1803
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1804
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1809
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1810
    :goto_0
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1811
    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    .line 1813
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v6, :cond_3

    .line 1814
    iget-object v9, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v9, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1815
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1816
    invoke-static {v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v11

    .line 1819
    iget-object v12, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v12

    if-eqz v12, :cond_2

    instance-of v12, v9, Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$300(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1820
    move-object v12, v9

    check-cast v12, Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v12}, Landroid/support/v7/widget/ActionBarContextView;->getIsActionModeAccessibilityOn()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1821
    iget-object v8, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v8

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Landroid/support/v7/widget/Toolbar;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 1823
    :cond_1
    iget-object v12, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/support/v7/widget/Toolbar;->setImportantForAccessibility(I)V

    .line 1827
    :cond_2
    :goto_2
    iget v8, v10, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    neg-int v8, p2

    int-to-float v8, v8

    .line 1833
    iget v9, v10, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float v8, v8, v9

    .line 1834
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1833
    invoke-virtual {v11, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_3

    :pswitch_1
    neg-int v8, p2

    .line 1829
    iget-object v10, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1830
    invoke-virtual {v10, v9}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v9

    .line 1829
    invoke-static {v8, v4, v9}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1840
    :cond_3
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1842
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    if-lez v3, :cond_4

    .line 1843
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1847
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    sub-float v5, v0, v3

    mul-float p2, p2, v5

    const/high16 v5, 0x437f0000    # 255.0f

    sub-float p2, v5, p2

    cmpg-float v6, p2, v3

    if-gez v6, :cond_5

    const/4 p2, 0x0

    goto :goto_4

    :cond_5
    cmpl-float v6, p2, v5

    if-lez v6, :cond_6

    const/high16 p2, 0x437f0000    # 255.0f

    :cond_6
    :goto_4
    div-float/2addr p2, v5

    .line 1853
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1854
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-nez v5, :cond_7

    .line 1856
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_5

    :cond_7
    cmpl-float p2, p2, v3

    if-nez p2, :cond_8

    .line 1858
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 1861
    :cond_8
    :goto_5
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p1

    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)F

    move-result p2

    float-to-int p2, p2

    const/16 v4, 0xff

    if-gt p1, p2, :cond_9

    .line 1862
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1863
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1864
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/support/v7/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    .line 1865
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result p1

    .line 1866
    invoke-static {p1, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1867
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1869
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1870
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result p1

    .line 1871
    invoke-static {p1, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1872
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto/16 :goto_6

    .line 1877
    :cond_9
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    if-eqz p1, :cond_d

    const/high16 p1, 0x43160000    # 150.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, v2

    mul-float p1, p1, v0

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_a

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_a

    .line 1880
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result v0

    double-to-int p1, p1

    .line 1881
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    .line 1882
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1883
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 1884
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result p2

    .line 1885
    invoke-static {p2, p1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1886
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto/16 :goto_6

    :cond_a
    cmpg-double p1, p1, v0

    if-gez p1, :cond_b

    .line 1890
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result p1

    double-to-int p2, v0

    .line 1891
    invoke-static {p1, p2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1892
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1893
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1894
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result p1

    .line 1895
    invoke-static {p1, p2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1896
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_6

    .line 1899
    :cond_b
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitleTextColor()I

    move-result p1

    .line 1900
    invoke-static {p1, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1901
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1902
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1903
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitleTextColor()I

    move-result p1

    .line 1904
    invoke-static {p1, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 1905
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_6

    .line 1910
    :cond_c
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1911
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object p1, p1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 1912
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v5

    div-float/2addr p2, v0

    .line 1911
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :cond_d
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
