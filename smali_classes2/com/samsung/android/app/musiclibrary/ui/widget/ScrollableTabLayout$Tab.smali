.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field public b:Landroid/view/ViewGroup;

.field private c:I

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:I

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/ImageView;

.field private final j:F

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "originWidth"

    const-string v4, "getOriginWidth()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scrollBase"

    const-string v4, "getScrollBase()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;FI)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f:I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->i:Landroid/widget/ImageView;

    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->j:F

    iput p6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->k:I

    const/4 p1, -0x1

    .line 552
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c:I

    .line 554
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$originWidth$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d:Lkotlin/Lazy;

    .line 561
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$scrollBase$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab$scrollBase$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;FIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v1, p7, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 545
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 546
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p4

    :goto_1
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;-><init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;FI)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 565
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->j:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(F)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 571
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(FZ)V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 2

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    mul-float v1, v1, p1

    .line 567
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c()I

    move-result v1

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method public final a()Landroid/view/ViewGroup;
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "parent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(FZ)V
    .locals 1

    .line 572
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(F)I

    move-result v0

    if-nez p2, :cond_0

    .line 573
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p2, v0, :cond_2

    .line 574
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 575
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 576
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 577
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 579
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 580
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 581
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c:I

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 552
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->c:I

    return v0
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->f:I

    return v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->g:Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()F
    .locals 1

    .line 547
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->j:F

    return v0
.end method

.method public final i()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->k:I

    return v0
.end method
