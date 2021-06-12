.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;,
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;,
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;,
        Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field private final g:Lkotlin/Lazy;

.field private h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mainActivity"

    const-string v4, "getMainActivity()Lcom/samsung/android/app/music/main/MainActivity;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "adapter"

    const-string v4, "getAdapter()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 74
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$mainActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$mainActivity$2;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c:Lkotlin/Lazy;

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onSharedPreferenceChangeListener$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    check-cast v0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 87
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$adapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$adapter$2;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->g:Lkotlin/Lazy;

    const-string v0, "UiList"

    .line 102
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->baseTag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->lifeCycleLogEnabled:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p0, :cond_0

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f()Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p0, :cond_0

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final f()Lcom/samsung/android/app/music/main/MainActivity;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/main/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 219
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iget-object p1, p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_1

    return-void

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_2

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p1, :cond_3

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_4

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public final b()I
    .locals 3

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "music_current_tab"

    const v2, 0x10004

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$refresh$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V

    check-cast v2, Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->h()V

    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->g()V

    const-string v1, "UiList"

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refresh() selectedTabId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->a(Landroid/app/Activity;[J)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 4

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b()Ljava/util/ArrayList;

    move-result-object v1

    const v2, 0x10100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "UiList"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " showSpotifyTip() itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 295
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->selectTab(II)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f()Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez v0, :cond_1

    const-string v1, "tabLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    check-cast v0, Landroid/view/View;

    .line 792
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    invoke-static {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a()V

    goto :goto_0

    .line 796
    :cond_3
    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$showSpotifyTip$$inlined$doOnLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$showSpotifyTip$$inlined$doOnLayout$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_tab_id"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->i:Ljava/lang/Integer;

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->j:Ljava/lang/String;

    const/4 p1, 0x1

    .line 124
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f0401a5

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "STQV"

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListTypeToTabString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 196
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 184
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 185
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 187
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->j:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 190
    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->i:Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "key_tab_id"

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f()Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f()Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->b()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->h:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->b()V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 773
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 774
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "music_current_tab"

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 146
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->a(Lcom/samsung/android/app/musiclibrary/ui/AppBar;Z)V

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    const v0, 0x7f13007c

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.view_pager)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const v0, 0x7f130478

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tab_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_2

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_4

    .line 154
    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v2, :cond_3

    const-string v3, "viewPager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 155
    :cond_3
    new-instance v3, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$onViewCreated$$inlined$perform$lambda$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    check-cast v3, Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    .line 154
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    goto :goto_0

    .line 160
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/util/TabUtils;->a()I

    move-result p1

    .line 153
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setOffscreenPageLimit(I)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_5

    const-string p3, "viewPager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    new-instance p3, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Analytics;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V

    check-cast p3, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_6

    const-string p3, "viewPager"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object p3

    check-cast p3, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 166
    sget-object p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string v0, "activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "activity!!.applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;Landroid/content/Context;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_a

    sget-object p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    const-string p1, "key_tab_id"

    .line 167
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 168
    invoke-static {p0, p3, v1, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "music_current_tab"

    const v0, 0x10004

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    :cond_a
    :goto_1
    const p1, 0x10002

    .line 170
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p2, :cond_b

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_c
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    if-nez p2, :cond_d

    const-string p3, "tabLayout"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p3, :cond_e

    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_e
    check-cast p3, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Landroid/support/v4/view/ViewPager;I)V

    return-void
.end method

.method public selectTab(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a()Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 231
    invoke-static {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 780
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;

    invoke-direct {p1, p0, p0, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$selectTab$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/main/MyMusicTabFragment;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_2
    :goto_0
    return-void
.end method
