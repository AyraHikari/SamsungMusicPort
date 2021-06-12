.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;

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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->a:[Lkotlin/reflect/KProperty;

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView$roundCornerHelper$2;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView$roundCornerHelper$2;-><init>(Landroid/content/Context;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->b:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 12
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->b:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->setRoundedCorners(I)V

    if-eqz p2, :cond_0

    .line 22
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->setRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/round/RoundedScrollView;->getRoundCornerHelper()Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;Landroid/graphics/Canvas;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method
