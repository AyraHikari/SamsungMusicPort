.class public final Lcom/samsung/android/app/music/list/local/HeartFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$CheckBoxAnimatorListener;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/HeartAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private d:Lcom/samsung/android/app/music/network/NetworkManager;

.field private e:Lcom/samsung/android/app/music/list/local/SpotifyManager;

.field private f:Z

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/properties/ReadWriteProperty;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "animatorListener"

    const-string v4, "getAnimatorListener()Landroid/animation/AnimatorListenerAdapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "networkStateChangedListener"

    const-string v4, "getNetworkStateChangedListener()Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "networkState"

    const-string v4, "getNetworkState()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "myMusicModeObserver"

    const-string v4, "getMyMusicModeObserver()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isMyMusicMode"

    const-string v4, "isMyMusicMode()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 177
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$animatorListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$animatorListener$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->i:Lkotlin/Lazy;

    .line 178
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$networkStateChangedListener$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->j:Lkotlin/Lazy;

    .line 183
    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1758
    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 1760
    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->k:Lkotlin/properties/ReadWriteProperty;

    .line 188
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$myMusicModeObserver$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->l:Lkotlin/Lazy;

    .line 191
    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1761
    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$$special$$inlined$observable$2;

    invoke-direct {v1, v0, v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 1763
    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->m:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->b:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const-string v0, "preferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->e(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->f(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->m:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/HeartFragment;)I
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->j()I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/HeartFragment;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method private final e(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->k:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->m()V

    return-void
.end method

.method private final f()Landroid/animation/AnimatorListenerAdapter;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method private final i()Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-object v0
.end method

.method private final j()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->k:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final k()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-object v0
.end method

.method private final l()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->m:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/samsung/android/app/music/list/local/HeartFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final m()V
    .locals 2

    .line 371
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(I)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->safeNotifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->c()Lcom/samsung/android/app/music/list/local/HeartAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 314
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 316
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->e:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    .line 317
    :cond_3
    new-instance v4, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    aput-object p2, v5, v1

    aput-object v3, v5, v2

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v3, v4

    check-cast v3, Landroid/database/Cursor;

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_4

    .line 318
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment;

    if-eqz v0, :cond_5

    const/16 p2, -0x3f0

    .line 319
    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(I)Landroid/database/Cursor;

    move-result-object p2

    :cond_5
    move-object v3, p2

    :goto_4
    const/16 p2, -0x7d1

    if-eqz v0, :cond_6

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->removeHeaderView(I)V

    goto :goto_5

    .line 324
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->hasHeaderView(I)Z

    move-result p2

    if-nez p2, :cond_7

    const p2, 0x7f100035

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->h(I)Landroid/view/View;

    .line 327
    :cond_7
    :goto_5
    invoke-super {p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 310
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/HeartAdapter;
    .locals 4

    .line 291
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "category_type"

    .line 292
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "favorite_name"

    .line 293
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "data1"

    .line 294
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    const-string v1, "data2"

    .line 295
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;

    const-string v1, "album_id"

    .line 296
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "cp_attrs"

    .line 297
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "category_id"

    .line 298
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 299
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const v1, 0x80002

    .line 300
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Favorites.AlbumArt.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/HeartAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 10

    .line 344
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 1754
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 1755
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/music/util/ListUtils;->c(I)I

    move-result v6

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v5, v3, v8, v9}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Lcom/samsung/android/app/music/list/local/HeartAdapter;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v8, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {v9, v5}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b(I)I

    move-result v5

    .line 348
    invoke-static {v0, v6, v7, v8, v5}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public g()I
    .locals 1

    const v0, 0x10030

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 196
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->b:Landroid/content/SharedPreferences;

    .line 199
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    const-string p1, "101"

    const-string v1, "102"

    .line 202
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$MilkServiceManager;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 363
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;

    const v3, 0x7f140012

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(Lcom/samsung/android/app/music/list/local/HeartAdapter;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 367
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;

    const v1, 0x7f140024

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartMenuGroup;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IZ)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 340
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroyView(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->f()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView(Z)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 274
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->i()Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v0, :cond_1

    const-string v1, "settingManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->k()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    move-result-object v1

    const-string v2, "my_music_mode_option"

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 281
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 261
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 262
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->d:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->i()Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->c:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    if-nez v0, :cond_1

    const-string v1, "settingManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->k()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    move-result-object v1

    const-string v2, "my_music_mode_option"

    const/4 v3, 0x1

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 269
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Z)V

    :cond_2
    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(J)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 223
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "Music"

    goto :goto_0

    :cond_1
    const-string v0, "GlobalMusic"

    :goto_0
    new-array v1, p2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 224
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v2, v1, p3

    .line 222
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 227
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->f:Z

    const/4 p1, 0x0

    .line 229
    invoke-static {p0, p3, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 231
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemClickListener;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 232
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ItemLongClickListener;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemLongClickListener;)V

    .line 233
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0348

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 234
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->b_(I)V

    .line 235
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 236
    new-instance p2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 238
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 239
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartPlayable;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 240
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 241
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    invoke-direct {p2, v0, p3, v1, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 242
    new-instance p2, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    .line 243
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->a()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartReorderHelper;->b()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemDecoration;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartItemAnimator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$NoItemResizableHeightItem;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/list/ResizableHeightItemKt;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    const/16 v0, -0x3f0

    new-instance v2, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;

    invoke-direct {v2, p0, p3, v1, p1}, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/EmptyViewCreator;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->a(ILandroid/view/View;)V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->f()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    :cond_4
    new-instance p2, Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->e:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    .line 256
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->c(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->g()I

    move-result p2

    invoke-static {p0, p2, p1, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 306
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
