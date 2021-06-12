.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;,
        Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Companion;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/PagerAdapter;

.field private final g:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;

.field private final h:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "itemSpacing"

    const-string v4, "getItemSpacing()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$itemSpacing$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$itemSpacing$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->d:Lkotlin/Lazy;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->setOrientation(I)V

    const/16 p1, 0x11

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->setGravity(I)V

    .line 113
    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;

    .line 139
    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->h:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final a(II)V
    .locals 9

    const-string v0, "Ui"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_PageIndicatorView | populateIndicator() - childCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->removeAllViews()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    const v3, 0x7f040241

    .line 58
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;

    const v6, 0x7f130561

    .line 61
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "view.findViewById(R.id.page_indicator_selected)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f130562

    .line 62
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "view.findViewById(R.id.page_indicator_unselected)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {v5, v1, v6, v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    .line 63
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 59
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_2

    const-string v4, "view"

    .line 66
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->getItemSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 66
    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "indicators[selectedPosition]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V
    .locals 4

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a(Z)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 80
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 82
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(II)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    if-nez p0, :cond_0

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 93
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 95
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->e:Landroid/support/v4/view/ViewPager;

    if-nez p0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final getItemSpacing()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 4

    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "Ui"

    const-string v1, "SetFavorite_PageIndicatorView | onDetachedFromWindow()"

    .line 104
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;

    check-cast v1, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    const-string v1, "pagerAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->h:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Ui"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetFavorite_PageIndicatorView | onDetachedFromWindow() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    const-string v0, "pager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->e:Landroid/support/v4/view/ViewPager;

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    const-string v0, "Ui"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_PageIndicatorView | setupWithViewPager() - viewPager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", pagerAdapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    if-nez p1, :cond_1

    const-string v2, "pagerAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->e:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_2

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->g:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    if-nez p1, :cond_3

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->h:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$dataSetObserver$1;

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->f:Landroid/support/v4/view/PagerAdapter;

    if-nez p1, :cond_4

    const-string v0, "pagerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_5

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(II)V

    return-void
.end method
