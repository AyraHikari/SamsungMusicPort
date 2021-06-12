.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;
.super Landroid/support/constraint/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Ljava/lang/Integer;

.field private h:Z

.field private i:Z

.field private j:Landroid/support/constraint/Guideline;

.field private k:Landroid/support/constraint/Guideline;

.field private l:Landroid/support/constraint/Guideline;

.field private m:Landroid/support/constraint/Guideline;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "clipIds"

    const-string v4, "getClipIds()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "animateIds"

    const-string v4, "getAnimateIds()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nowPlayingIds"

    const-string v4, "getNowPlayingIds()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "showButtonIds"

    const-string v4, "getShowButtonIds()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$Companion;

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$clipIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$clipIds$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->c:Lkotlin/Lazy;

    .line 25
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$animateIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$animateIds$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->d:Lkotlin/Lazy;

    .line 26
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$nowPlayingIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$nowPlayingIds$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->e:Lkotlin/Lazy;

    .line 27
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$showButtonIds$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$showButtonIds$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->f:Lkotlin/Lazy;

    const/4 p3, 0x1

    .line 32
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->i:Z

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    :try_start_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout_clipIds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClipIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 46
    :cond_0
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout_animateIds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getAnimateIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 49
    :cond_1
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout_showButtonIds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getShowButtonIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 52
    :cond_2
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout_nowPlayingIds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getNowPlayingIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClipIds()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, p3

    if-eqz p2, :cond_4

    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->h:Z

    .line 57
    :cond_4
    sget p2, Lcom/samsung/android/app/musiclibrary/R$styleable;->MusicConstraintLayout_clickableId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 58
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->g:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;)V

    check-cast p1, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .locals 7

    .line 252
    check-cast p1, Ljava/lang/CharSequence;

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v0, v3, :cond_5

    if-nez v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    .line 259
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v3, v1

    .line 274
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->j:Landroid/support/constraint/Guideline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->k:Landroid/support/constraint/Guideline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->l:Landroid/support/constraint/Guideline;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->m:Landroid/support/constraint/Guideline;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 144
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->j:Landroid/support/constraint/Guideline;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 145
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/constraint/GuidelinExtensionKt;->a(Landroid/support/constraint/Guideline;)I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 146
    invoke-virtual {v3, v1}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    const/4 v0, 0x1

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->k:Landroid/support/constraint/Guideline;

    if-eqz v1, :cond_4

    .line 151
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/constraint/GuidelinExtensionKt;->a(Landroid/support/constraint/Guideline;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 152
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    const/4 v0, 0x1

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->l:Landroid/support/constraint/Guideline;

    if-eqz v1, :cond_5

    .line 157
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/constraint/GuidelinExtensionKt;->b(Landroid/support/constraint/Guideline;)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 158
    invoke-virtual {v1, v2}, Landroid/support/constraint/Guideline;->setGuidelineEnd(I)V

    const/4 v0, 0x1

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->m:Landroid/support/constraint/Guideline;

    if-eqz v1, :cond_6

    .line 163
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/constraint/GuidelinExtensionKt;->b(Landroid/support/constraint/Guideline;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 164
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/Guideline;->setGuidelineEnd(I)V

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->requestLayout()V

    :cond_7
    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private final a()V
    .locals 6

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;

    .line 191
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 275
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_a

    .line 276
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->j:Landroid/support/constraint/Guideline;

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_fit_start:I

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    .line 194
    check-cast v3, Landroid/support/constraint/Guideline;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->j:Landroid/support/constraint/Guideline;

    goto/16 :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.constraint.Guideline"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->k:Landroid/support/constraint/Guideline;

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_fit_top:I

    if-ne v4, v5, :cond_4

    if-eqz v3, :cond_3

    .line 200
    check-cast v3, Landroid/support/constraint/Guideline;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->k:Landroid/support/constraint/Guideline;

    goto :goto_1

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.constraint.Guideline"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_4
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->l:Landroid/support/constraint/Guideline;

    if-nez v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_fit_end:I

    if-ne v4, v5, :cond_6

    if-eqz v3, :cond_5

    .line 206
    check-cast v3, Landroid/support/constraint/Guideline;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->l:Landroid/support/constraint/Guideline;

    goto :goto_1

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.constraint.Guideline"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_6
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->m:Landroid/support/constraint/Guideline;

    if-nez v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_fit_bottom:I

    if-ne v4, v5, :cond_8

    if-eqz v3, :cond_7

    .line 212
    check-cast v3, Landroid/support/constraint/Guideline;

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->m:Landroid/support/constraint/Guideline;

    goto :goto_1

    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.constraint.Guideline"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->j:Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->k:Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->l:Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->m:Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_a
    :goto_2
    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->i:Z

    return-void
.end method

.method private final a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string p2, ","

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 250
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getAnimateIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getClipIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getNowPlayingIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final getAnimateViews()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getAnimateIds()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 246
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 93
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getClickableView()Landroid/view/View;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->g:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getNowPlayingViewHolders()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getNowPlayingIds()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 248
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 99
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "findViewById(id)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/NowPlayingViewHolder;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getShowButtonIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onAttachedToWindow()V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->requestApplyInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 83
    invoke-super {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->onMeasure(II)V

    .line 85
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->h:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->h:Z

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->getClipIds()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 244
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
