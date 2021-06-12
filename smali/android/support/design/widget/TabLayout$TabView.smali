.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field mDotBadgeView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

.field private mIsCallPerformClick:Z

.field private mMainTabTouchBackground:Landroid/view/View;

.field mNBadgeView:Landroid/widget/TextView;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextParentView:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1749
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1750
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1747
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1751
    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1752
    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 1753
    invoke-static {p2, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1752
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1755
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 1756
    iget p2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iget p1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {p0, p2, v1, v2, p1}, Landroid/support/design/widget/TabLayout$TabView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1759
    :cond_1
    iget p2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget p1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v1, p1}, Landroid/support/design/widget/TabLayout$TabView;->setPaddingRelative(IIII)V

    :goto_0
    const/16 p1, 0x11

    .line 1762
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1763
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1764
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1766
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 1765
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;
    .locals 0

    .line 1729
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1729
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/internal/SeslAbsIndicatorView;
    .locals 0

    .line 1729
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;
    .locals 0

    .line 1729
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout$TabView;)Landroid/widget/TextView;
    .locals 0

    .line 1729
    iget-object p0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    .line 2279
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    return p2
.end method

.method private showMainTabTouchBackground(I)V
    .locals 13

    .line 1851
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 1855
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1856
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1857
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1862
    :pswitch_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x64

    .line 1863
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1864
    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1865
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1867
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x15e

    .line 1871
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1872
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 1873
    invoke-virtual {p1, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1874
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1876
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1880
    :cond_1
    :pswitch_1
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1881
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1882
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    .line 1883
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1884
    invoke-virtual {p1, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1887
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1889
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Landroid/support/design/widget/TabLayout$TabView$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$TabView$1;-><init>(Landroid/support/design/widget/TabLayout$TabView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startTabTouchAnimation(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1782
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v0, 0x1

    .line 1814
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 1815
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1816
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v1, :cond_0

    .line 1817
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setReleased()V

    .line 1818
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1, p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1821
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->performClick()Z

    .line 1822
    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x0

    .line 1785
    iput-boolean v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    .line 1786
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 1787
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1788
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 1789
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    .line 1788
    invoke-static {v1, v2, v3, v4}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    .line 1790
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v1, :cond_1

    .line 1791
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setPressed()V

    .line 1794
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1796
    iget-object v2, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 1797
    iget-object v2, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1798
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1799
    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    .line 1798
    invoke-static {v2, v3, v4, v5}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    .line 1801
    :cond_2
    iget-object v2, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_4

    .line 1802
    iget-object v1, v1, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHide()V

    goto :goto_0

    .line 1805
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout$Tab;->access$700(Landroid/support/design/widget/TabLayout$Tab;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1806
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v1, :cond_4

    .line 1807
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setPressed()V

    .line 1811
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    goto/16 :goto_1

    .line 1825
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1826
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1827
    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 1826
    invoke-static {v0, v2, v3, v4}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    .line 1828
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v0}, Landroid/support/design/internal/SeslAbsIndicatorView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1829
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v0}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHide()V

    .line 1832
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1834
    iget-object v2, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 1835
    iget-object v2, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1836
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 1837
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v5}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)I

    move-result v5

    .line 1836
    invoke-static {v2, v3, v4, v5}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;II)V

    .line 1839
    :cond_7
    iget-object v2, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_8

    .line 1840
    iget-object v0, v0, Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {v0}, Landroid/support/design/internal/SeslAbsIndicatorView;->setShow()V

    .line 1843
    :cond_8
    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V

    .line 1847
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2227
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2228
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2229
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 2233
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2234
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2235
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_3

    .line 2237
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2238
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2240
    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2243
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 2246
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2248
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 2250
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2251
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 2257
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 2259
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 2261
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v5

    .line 2263
    :cond_7
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v2, :cond_8

    .line 2264
    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2265
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v3

    .line 2268
    :goto_5
    invoke-static {p0, v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 2272
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1976
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1978
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1983
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1985
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1990
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1991
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1992
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    .line 1993
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    .line 1994
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 1995
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1996
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1999
    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 2004
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2005
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2006
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    .line 2011
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2013
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    if-eqz v1, :cond_1

    if-le v0, v2, :cond_2

    .line 2019
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget p1, p1, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2026
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2029
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 2030
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    .line 2031
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 2032
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    float-to-int v4, v0

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    .line 2033
    iget v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 2035
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 2038
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 2040
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 2043
    :cond_4
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 2044
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    .line 2045
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    cmpl-float v3, v0, v3

    if-nez v3, :cond_5

    if-ltz v6, :cond_8

    if-eq v2, v6, :cond_8

    .line 2051
    :cond_5
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v6, v6, Landroid/support/design/widget/TabLayout;->mMode:I

    if-ne v6, v4, :cond_7

    if-lez v3, :cond_7

    if-ne v5, v4, :cond_7

    .line 2057
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2058
    invoke-direct {p0, v3, v1, v0}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v3

    .line 2059
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    :cond_6
    const/4 v4, 0x0

    :cond_7
    if-eqz v4, :cond_8

    .line 2065
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2066
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    float-to-int v0, v0

    invoke-static {v3, v4, v0}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    .line 2067
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2068
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2073
    :cond_8
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz p1, :cond_a

    .line 2074
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 2075
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2076
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 2077
    iget-object p2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2078
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2079
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2080
    :cond_9
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget p1, p1, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 2081
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2082
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 2083
    iget-object p2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2084
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2085
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 2089
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2090
    instance-of v0, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_a

    .line 2091
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2092
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 2093
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1771
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$TabView;->startTabTouchAnimation(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1776
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 4

    .line 1919
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1920
    iput-boolean v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIsCallPerformClick:Z

    return v1

    .line 1923
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1925
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v3, :cond_1

    .line 1926
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 1927
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    return v1

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2108
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 2109
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1937
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1942
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1944
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1946
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    .line 1948
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1953
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1954
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1956
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1957
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1959
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1960
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1964
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 1966
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setShow()V

    goto :goto_1

    .line 1968
    :cond_6
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    invoke-virtual {p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->setHideImmediatly()V

    :cond_7
    :goto_1
    return-void
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2101
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 2102
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 2103
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 8

    .line 2113
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2114
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2116
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 2119
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2121
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2123
    :cond_2
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 2124
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2125
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2127
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 2128
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2129
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    .line 2132
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 2133
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 2134
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    :cond_5
    const v3, 0x1020006

    .line 2136
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 2139
    :cond_6
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2140
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2141
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 2143
    :cond_7
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 2144
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 2147
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    .line 2149
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 2150
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Landroid/support/design/R$layout;->sesl_layout_tab_icon:I

    .line 2151
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2152
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 2153
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 2155
    :cond_8
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_9

    .line 2156
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2157
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 2160
    :cond_9
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_11

    .line 2164
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-ne v1, v2, :cond_b

    .line 2165
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->sesl_layout_sub_tab_text:I

    .line 2166
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2167
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, -0x1

    .line 2173
    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$1500(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    .line 2174
    sget v6, Landroid/support/design/R$id;->indicator:I

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/internal/SeslAbsIndicatorView;

    iput-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    .line 2175
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    if-eq v6, v5, :cond_10

    .line 2176
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1600(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    goto :goto_4

    .line 2179
    :cond_b
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/design/R$layout;->sesl_layout_tab_text:I

    .line 2180
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2182
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v4, -0x1

    .line 2188
    :cond_c
    sget v2, Landroid/support/design/R$id;->indicator:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/SeslAbsIndicatorView;

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    .line 2189
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    if-eqz v2, :cond_d

    .line 2190
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIndicatorView:Landroid/support/design/internal/SeslAbsIndicatorView;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1700(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/support/design/internal/SeslAbsIndicatorView;->setSelectedIndicatorColor(I)V

    .line 2192
    :cond_d
    sget v2, Landroid/support/design/R$id;->main_tab_touch_background:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    .line 2193
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_f

    .line 2194
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1800(Landroid/support/design/widget/TabLayout;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2195
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/design/R$drawable;->sesl_tablayout_maintab_touch_background_light:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_3

    .line 2196
    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/design/R$drawable;->sesl_tablayout_maintab_touch_background_dark:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2194
    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2197
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    const/4 v2, -0x1

    .line 2201
    :cond_10
    :goto_4
    sget v5, Landroid/support/design/R$id;->title:I

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2202
    invoke-virtual {p0, v1, v4, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;II)V

    .line 2203
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 2204
    iput-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextParentView:Landroid/widget/RelativeLayout;

    .line 2205
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 2208
    :cond_11
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2209
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v4, v4, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    float-to-int v4, v4

    invoke-static {v1, v2, v4}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;Landroid/widget/TextView;I)V

    .line 2210
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_12

    .line 2211
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2213
    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_5

    .line 2216
    :cond_13
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    .line 2217
    :cond_14
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_15
    :goto_5
    if-eqz v0, :cond_16

    .line 2222
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v3, 0x1

    :cond_16
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method
