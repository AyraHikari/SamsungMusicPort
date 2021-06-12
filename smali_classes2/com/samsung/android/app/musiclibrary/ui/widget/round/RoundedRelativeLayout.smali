.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Z

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "roundCornerHelper"

    const-string v4, "getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "transparentRoundHelper"

    const-string v4, "getTransparentRoundHelper()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->a:[Lkotlin/reflect/KProperty;

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$roundCornerHelper$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$roundCornerHelper$2;-><init>(Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->c:Lkotlin/Lazy;

    .line 23
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout$transparentRoundHelper$2;-><init>(Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->d:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 13
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    return-object v0
.end method

.method private final getTransparentRoundHelper()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->b:Z

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->setRoundedCorners(I)V

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->getRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->setRoundedCornerColor(II)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->b:Z

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getTransparentRoundHelper()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->b:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getTransparentRoundHelper()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->b:Z

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->getRoundedCorners()I

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;Landroid/graphics/Canvas;Landroid/view/View;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 56
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->b:Z

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedRelativeLayout;->getTransparentRoundHelper()Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/TransparentRoundHelper;->a()V

    :cond_0
    return-void
.end method
