.class public final Lcom/samsung/android/app/music/list/common/GridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

.field private final d:Z

.field private final e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Landroid/app/Activity;

.field private final n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final o:Lcom/samsung/android/app/music/list/common/GridItemDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetSpanCount"

    const-string v4, "getPresetSpanCount()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetSpaceOuter"

    const-string v4, "getPresetSpaceOuter()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetSpaceInner"

    const-string v4, "getPresetSpaceInner()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "itemMinWidth"

    const-string v4, "getItemMinWidth()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->m:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->o:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->d:Z

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->m:Landroid/app/Activity;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->isMultiWindowMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->e:Z

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpanCount$2;-><init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->i:Lkotlin/Lazy;

    .line 49
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpaceOuter$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpaceOuter$2;-><init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->j:Lkotlin/Lazy;

    .line 59
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpaceInner$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$presetSpaceInner$2;-><init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->k:Lkotlin/Lazy;

    .line 68
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/common/GridItemDecoration$itemMinWidth$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$itemMinWidth$2;-><init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->l:Lkotlin/Lazy;

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p2, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$1;-><init>(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.MultiWindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicGridLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 25
    check-cast p3, Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;)V

    return-void
.end method

.method private final a()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final a(II)V
    .locals 3

    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 118
    sget-object v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->a(IIII)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->h:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->g:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->e:Z

    return p0
.end method

.method private final b()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/common/GridItemDecoration;I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->d:Z

    return p0
.end method

.method private final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/music/list/common/GridItemDecorator;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->o:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    return-object p0
.end method

.method private final d()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->m:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->h:I

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a()I

    move-result p0

    return p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->d()I

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result p0

    return p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c()I

    move-result p0

    return p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    return-object p0
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/list/common/GridItemDecoration;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->g:Z

    return p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 128
    iget-boolean p3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->g:Z

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 130
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    .line 132
    iget-object p4, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p4

    const-string v0, "recyclerView.getChildViewHolder(view)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p4

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result v1

    .line 138
    invoke-direct {p0, v1, p4}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->a(II)V

    .line 140
    iget v2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    invoke-static {p2, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    .line 142
    div-int/2addr v1, p4

    iget p2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->f:I

    sub-int/2addr v1, p2

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    if-ne p4, v0, :cond_2

    .line 148
    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    sub-int/2addr p4, v0

    if-ne p2, p4, :cond_4

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result p3

    mul-int v1, v1, p2

    sub-int/2addr p3, v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c()I

    move-result p4

    mul-int p4, p4, p2

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b()I

    move-result p3

    mul-int v1, v1, p2

    sub-int/2addr p3, v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->c()I

    move-result p4

    mul-int p4, p4, p2

    add-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->left:I

    const/4 p2, 0x0

    .line 161
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method
