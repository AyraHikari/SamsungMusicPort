.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Companion;

.field private static final o:Landroid/support/v4/view/animation/FastOutSlowInInterpolator;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

.field private f:Ljava/lang/Integer;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scrollAnimator"

    const-string v4, "getScrollAnimator()Landroid/animation/ValueAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "endScrollRunnable"

    const-string v4, "getEndScrollRunnable()Ljava/lang/Runnable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Companion;

    .line 607
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->o:Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    .line 39
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "getContext()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p3, "getContext().resources"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string p3, "getContext().resources.configuration"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    .line 51
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->m:Lkotlin/Lazy;

    .line 63
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->n:Lkotlin/Lazy;

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    check-cast p1, Landroid/view/View;

    const/4 p2, -0x1

    const/4 p3, -0x2

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->addView(Landroid/view/View;II)V

    .line 106
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    check-cast p1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 30
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 31
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    return-object p0
.end method

.method private final a(IF)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 437
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_2

    .line 438
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 442
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->scrollTo(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 2

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 347
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 350
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    const p1, 0x3f666666    # 0.9f

    .line 351
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZ)V
    .locals 4

    const-string v0, "ScrollableTabLayout"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isLaidOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->isLaidOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 327
    :cond_1
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 331
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 334
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    .line 336
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 338
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 633
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 339
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    .line 340
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    goto :goto_2

    :cond_6
    return-void

    .line 324
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->setScaleTabs(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;IF)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(IF)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 318
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    return-void
.end method

.method private final b(IF)I
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 449
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz p1, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 453
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public static final synthetic b()Landroid/support/v4/view/animation/FastOutSlowInInterpolator;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->o:Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 6

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_tab_n_of_n:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.getString(R.string.tts_tab_n_of_n)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 360
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result p1

    const/4 v5, 0x1

    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    .line 358
    array-length p1, v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h:Landroid/support/v4/view/ViewPager;

    if-nez p0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final c()V
    .locals 8

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 615
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-nez v2, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v5, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FILjava/lang/Object;)I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 217
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c()I

    move-result v2

    add-int/2addr v2, v0

    move v0, v2

    .line 214
    :goto_1
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(I)V

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 7

    .line 372
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 374
    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FILjava/lang/Object;)I

    move-result v1

    .line 375
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b()I

    move-result v2

    .line 377
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    const-string v3, "ScrollableTabLayout"

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animationToTab() pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", targetScrollX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 385
    new-array v1, v4, [I

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    aput v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 386
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 387
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;I)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 393
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private final d()V
    .locals 11

    const-string v0, "ScrollableTabLayout"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTabs(), initTabId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_0

    const-string v3, "viewPager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_7

    .line 233
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;

    if-nez v5, :cond_2

    const-string v6, "scrollableTabAdapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    move-object v6, p0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-interface {v5, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;->a(ILandroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    move-result-object v5

    .line 234
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Landroid/view/ViewGroup;)V

    .line 235
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;

    invoke-direct {v7, v5, p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$also$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;ILkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h:Landroid/support/v4/view/ViewPager;

    if-nez v6, :cond_3

    const-string v7, "viewPager"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    instance-of v7, v6, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;

    if-nez v7, :cond_4

    move-object v6, v1

    :cond_4
    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;

    if-eqz v6, :cond_6

    .line 244
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 245
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g()Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f:Ljava/lang/Integer;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 249
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->a(I)J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-nez v6, :cond_6

    .line 250
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    :cond_7
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f:Ljava/lang/Integer;

    .line 258
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 260
    :cond_8
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v5, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZILjava/lang/Object;)V

    .line 262
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v2

    .line 617
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 263
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result v2

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 264
    :cond_a
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    goto :goto_2

    .line 621
    :cond_b
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$initTabs$$inlined$doOnLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_2
    return-void
.end method

.method private final d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
    .locals 4

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 399
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FILjava/lang/Object;)I

    move-result v0

    .line 400
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b()I

    move-result v1

    .line 402
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    const-string v0, "ScrollableTabLayout"

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToTab() tab="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", targetScrollX="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->setScaleTabs(I)V

    const/4 p1, 0x0

    .line 407
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->scrollTo(II)V

    return-void
.end method

.method private final e()V
    .locals 4

    const-string v0, "ScrollableTabLayout"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTabs() selectedTab id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f:Ljava/lang/Integer;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 274
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    return p0
.end method

.method private final f()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getMeasuredWidth()I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 288
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_1

    .line 289
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v1, v0, v1

    .line 296
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v2

    .line 297
    div-int/lit8 v0, v0, 0x2

    .line 308
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getPaddingTop()I

    move-result v3

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getPaddingBottom()I

    move-result v4

    .line 308
    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f()V

    return-void
.end method

.method private final getEndScrollRunnable()Ljava/lang/Runnable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->n:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private final getScrollAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final getSelectedTabPosition()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getSelectedTabPosition()I

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    return p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getEndScrollRunnable()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private final setScaleTabs(I)V
    .locals 9

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c()V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result p1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 635
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 v2, 0x0

    .line 418
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 419
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 421
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v8

    if-le v7, p1, :cond_1

    goto :goto_1

    :cond_1
    if-lt v8, p1, :cond_2

    .line 422
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    .line 423
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 424
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v3

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v7

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    if-lt v7, p1, :cond_4

    .line 425
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    .line 426
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v6, v2

    .line 429
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result v3

    sub-float/2addr v3, v6

    mul-float v2, v2, v3

    add-float/2addr v2, v6

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(FZ)V

    goto :goto_0

    .line 432
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f()V

    .line 433
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e()V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d()V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ViewPager;I)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h:Landroid/support/v4/view/ViewPager;

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f:Ljava/lang/Integer;

    .line 127
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->i:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d()V

    return-void

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ViewPager.Adapter should implement ScrollableTabAdapter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getEndScrollRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const-string v1, "ScrollableTabLayout"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isDragging="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    .line 169
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    :cond_2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 138
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f()V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 153
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    if-nez p2, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollAnimator()Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->setScaleTabs(I)V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getEndScrollRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getEndScrollRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x32

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ScrollableTabLayout"

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 182
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    .line 183
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    goto :goto_4

    :cond_3
    :goto_1
    const/4 v3, 0x2

    if-nez v0, :cond_4

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 186
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    .line 187
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->l:Z

    goto :goto_4

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    goto :goto_3

    .line 189
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 190
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    goto :goto_4

    .line 193
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->k:Z

    .line 197
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 612
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 202
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
