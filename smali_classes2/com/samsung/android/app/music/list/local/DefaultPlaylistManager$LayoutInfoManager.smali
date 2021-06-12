.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutInfoManager"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetSpaceOuter"

    const-string v4, "getPresetSpaceOuter()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetSpaceInner"

    const-string v4, "getPresetSpaceInner()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "presetItemWidth"

    const-string v4, "getPresetItemWidth()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

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

    sput-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    .line 282
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b:Z

    .line 283
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c:Z

    .line 284
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "fragment.activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->c(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d:Z

    .line 285
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->e:Z

    .line 287
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->f:Z

    .line 289
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceOuter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceOuter$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->g:Lkotlin/Lazy;

    .line 293
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetSpaceInner$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->h:Lkotlin/Lazy;

    .line 297
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetItemWidth$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$presetItemWidth$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->i:Lkotlin/Lazy;

    .line 301
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$itemMinWidth$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager$itemMinWidth$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;)Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->f:Z

    return p0
.end method

.method private final b()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final d()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final e()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .line 312
    sget-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->k:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d()I

    move-result v1

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v0

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    goto/16 :goto_1

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b:Z

    if-eqz v0, :cond_2

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d()I

    move-result v1

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v0

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    goto/16 :goto_1

    .line 329
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c:Z

    if-eqz v0, :cond_4

    .line 330
    sget-object v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->e()I

    move-result v1

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v2

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v3

    .line 330
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->b(IIII)I

    move-result v0

    .line 336
    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v2

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v3

    .line 336
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->a(IIII)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    sub-int v0, p1, v0

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 346
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v0

    .line 349
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    goto :goto_1

    .line 351
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->e:Z

    if-eqz v0, :cond_5

    .line 352
    sget-object v0, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->e()I

    move-result v1

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v2

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v3

    .line 352
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->b(IIII)I

    move-result v0

    .line 358
    sget-object v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;->b:Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v2

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v3

    .line 358
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/samsung/android/app/music/list/common/GridItemDecoration$Companion;->a(IIII)I

    move-result v1

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->b()I

    move-result v0

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->c()I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 369
    :goto_1
    sget-object v3, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    .line 370
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a(I)V

    .line 371
    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->b(I)V

    .line 372
    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->c(I)V

    .line 373
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->d(I)V

    return-void
.end method
