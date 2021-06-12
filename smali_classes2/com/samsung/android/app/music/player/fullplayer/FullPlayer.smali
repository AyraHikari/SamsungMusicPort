.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;
.implements Lcom/samsung/android/app/music/player/fullplayer/M2TvControllable;
.implements Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;
.implements Lcom/samsung/android/app/music/player/volume/VolumeControllable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;,
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;,
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;,
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$CommandExecutor;,
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;
    }
.end annotation


# static fields
.field private static final Q:Z

.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;


# instance fields
.field private A:Lcom/samsung/android/app/music/player/SeekController;

.field private B:Lcom/samsung/android/app/music/player/volume/VolumeController;

.field private C:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

.field private D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

.field private E:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

.field private F:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

.field private G:Lcom/samsung/android/app/music/player/ShuffleController;

.field private H:Lcom/samsung/android/app/music/player/RepeatController;

.field private I:Z

.field private J:Z

.field private final K:Z

.field private L:I

.field private M:I

.field private final N:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

.field private final O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

.field private final P:I

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private i:Ljava/lang/Integer;

.field private j:I

.field private k:Landroid/view/View;

.field private l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

.field private m:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

.field private n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

.field private o:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

.field private p:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

.field private q:Lcom/samsung/android/app/music/player/FavoriteController;

.field private r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

.field private s:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

.field private t:Lcom/samsung/android/app/music/ActivePlayerController;

.field private u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private v:Lcom/samsung/android/app/music/lyrics/LyricsController;

.field private w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

.field private x:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

.field private y:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

.field private z:Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "applicationContext"

    const-string v4, "getApplicationContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "uiManager"

    const-string v4, "getUiManager()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerSceneStatePublisher"

    const-string v4, "getPlayerSceneStatePublisher()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewTypeController"

    const-string v4, "getViewTypeController()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backPressedObservable"

    const-string v4, "getBackPressedObservable()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "multiWindowManager"

    const-string v4, "getMultiWindowManager()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 943
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    sput-boolean v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P:I

    .line 102
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$applicationContext$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c:Lkotlin/Lazy;

    .line 103
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$uiManager$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d:Lkotlin/Lazy;

    .line 108
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$playerSceneStatePublisher$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$playerSceneStatePublisher$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e:Lkotlin/Lazy;

    .line 112
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$viewTypeController$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lkotlin/Lazy;

    .line 115
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$backPressedObservable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$backPressedObservable$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lkotlin/Lazy;

    .line 118
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowManager$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->h:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->j:I

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    .line 154
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Z

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:I

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:I

    .line 157
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;I)V

    return-void
.end method

.method private final A()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->i:Ljava/lang/Integer;

    .line 678
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->j(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method private final B()Z
    .locals 3

    .line 739
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:I

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:I

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 740
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:I

    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:I

    .line 742
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 1139
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "SMUSIC-FullPlayer"

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLayoutSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;
    .locals 8

    const v0, 0x7f1304a1

    .line 547
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 548
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isMultiWindowMode()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 550
    check-cast v0, Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 551
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;

    invoke-direct {v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    new-array v2, v2, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    .line 552
    sget-object v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->MWRoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v5, v2, v3

    .line 553
    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v3, v2, v4

    .line 549
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;Ljava/lang/Boolean;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    goto :goto_0

    :cond_0
    const v1, 0x7f1301e6

    .line 556
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-array v1, v4, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    sget-object v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->PrivateVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v5, v1, v3

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    move-result-object p2

    .line 558
    check-cast v0, Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 559
    new-instance v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;

    invoke-direct {v5}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;-><init>()V

    check-cast v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    sget-object v7, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->RoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v7, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v7, v6, v3

    .line 560
    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Quality:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v3, v6, v4

    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->DRM:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v3, v6, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Connection:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v3, v6, v2

    const/4 v2, 0x4

    .line 561
    sget-object v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v3, v6, v2

    .line 557
    invoke-virtual {p2, v0, v1, v5, v6}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;Ljava/lang/Boolean;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    :goto_0
    return-object p1
.end method

.method private final a(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
    .locals 2

    .line 537
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    const v1, 0x7f130294

    .line 538
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 537
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;-><init>(Landroid/view/View;)V

    .line 540
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    .line 541
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a()Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 594
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Z

    return-void
.end method

.method private final varargs a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V
    .locals 7

    .line 526
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 527
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a(Lcom/samsung/android/app/music/player/PlayerGestureViCache;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[ILjava/lang/String;ILjava/lang/Object;)V

    .line 528
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 529
    instance-of p3, p1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    if-eqz p3, :cond_0

    .line 530
    check-cast p1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x()V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Z

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Z

    return p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$multiWindowStateListener$1;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    if-nez p0, :cond_0

    const-string v0, "backPressedListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/volume/VolumeController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    return-object p0
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez p0, :cond_0

    const-string v0, "actionBarMenuController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v()V

    return-void
.end method

.method public static final synthetic n(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    if-nez p0, :cond_0

    const-string v0, "emptyMetaController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic n()Z
    .locals 1

    .line 97
    sget-boolean v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Z

    return v0
.end method

.method private final o()Landroid/content/Context;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/ActivePlayerController;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez p0, :cond_0

    const-string v0, "activePlayerController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    return-object v0
.end method

.method private final q()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    return-object v0
.end method

.method public static final synthetic q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p0

    return-object p0
.end method

.method private final r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    return-object v0
.end method

.method public static final synthetic r(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->E:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    return-object p0
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    return-object p0
.end method

.method private final s()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    return-object v0
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    return-object p0
.end method

.method private final t()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    return-object v0
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    if-nez p0, :cond_0

    const-string v0, "nowPlayingController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final u()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 181
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    const-string v1, "MultiWindow - doNotifyLayoutReady"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v()V

    goto :goto_2

    .line 184
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 983
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "SMUSIC-FullPlayer"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiWindow - doNotifyLayoutReady doOnNextLayout window="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_1
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$doNotifyLayoutReady$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$doNotifyLayoutReady$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final v()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    if-nez v0, :cond_1

    const-string v1, "listButtonController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;->a()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/SeekController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController;->b()V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->G:Lcom/samsung/android/app/music/player/ShuffleController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/ShuffleController;->a()V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->H:Lcom/samsung/android/app/music/player/RepeatController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/RepeatController;->a()V

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->a()V

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    :cond_6
    return-void
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w()V

    return-void
.end method

.method private final w()V
    .locals 8

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f1302a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1008
    :goto_0
    :try_start_0
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_3

    .line 1009
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 1010
    move-object v2, v0

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const v3, 0x7f13029f

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 206
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const v3, 0x7f1302a0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 207
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_1

    :cond_2
    const v3, 0x7f13029f

    const/4 v4, 0x7

    const v5, 0x7f1302a2

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 209
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    const v3, 0x7f1302a0

    const/4 v4, 0x7

    const v5, 0x7f1302a2

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 210
    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1012
    :goto_1
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_2

    .line 1015
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "Ui"

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not applied to view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1031
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "Ui"

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptional case with constraints function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static final synthetic w(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u()V

    return-void
.end method

.method private final x()V
    .locals 2

    .line 568
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y()V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.OnKeyObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final y()V
    .locals 3

    .line 573
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$composeOnBackPressListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 584
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    move-result-object v1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    return-void
.end method

.method private final z()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 671
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->i:Ljava/lang/Integer;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "container"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object p3, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    const p3, 0x7f040091

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "it"

    .line 267
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "FullPlayer"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k:Landroid/view/View;

    const-string p2, "inflater.inflate(R.layou\u2026 it.tag = TAG }\n        }"

    .line 266
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(F)V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float p1, v1, p1

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    mul-float p1, p1, v1

    add-float/2addr p1, v3

    const/16 v1, 0xff

    int-to-float v2, v1

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    if-le p1, v1, :cond_4

    const/16 p1, 0xff

    .line 1063
    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(I)V

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 249
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->j:I

    if-ne v0, p1, :cond_0

    return-void

    .line 251
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->j:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A()V

    goto :goto_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z()V

    :goto_0
    return-void
.end method

.method public final a(IZ)V
    .locals 3

    if-nez p2, :cond_4

    .line 596
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    if-nez v0, :cond_0

    const-string v2, "nowPlayingController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a(Z)V

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Z)V

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Z)V

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b(Z)V

    .line 603
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    if-nez p2, :cond_9

    .line 605
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 606
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    if-nez p1, :cond_5

    const-string v0, "nowPlayingController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a(Z)V

    .line 608
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Z)V

    .line 609
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Z)V

    .line 610
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->b(Z)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 1124
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayer"

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_view_type"

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "key_view_type"

    const/4 v1, 0x0

    .line 589
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 394
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 395
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-direct {p0, v1, p3, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 398
    new-instance v1, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v3

    .line 400
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 401
    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    .line 398
    invoke-direct {v1, v3, v5, v6}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteMenu;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 397
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V

    .line 394
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    .line 406
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$ActionBarVisibleController;-><init>(Landroid/view/View;)V

    .line 408
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 407
    invoke-direct {p0, v0, p3, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 412
    sget-boolean v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Z

    if-eqz v0, :cond_1

    .line 414
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v3

    const-string v5, "applicationContext"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez v5, :cond_0

    const-string v6, "actionBarMenuController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v3, v5}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    .line 415
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v5, v4, [I

    invoke-direct {p0, v3, p3, v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 414
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    .line 418
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->n:Z

    if-eqz v0, :cond_2

    .line 420
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v3, Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v0, v3, p1, v5}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/app/FragmentManager;)V

    .line 421
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v5, v2, [I

    aput v4, v5, v4

    invoke-direct {p0, v3, p3, v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 420
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->E:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    .line 426
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V

    .line 446
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 449
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController;

    const v3, 0x7f1302a0

    .line 452
    sget-object v5, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 449
    invoke-direct {v0, p1, v3, v5}, Lcom/samsung/android/app/music/lyrics/LyricsController;-><init>(Landroid/view/View;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders;)V

    .line 454
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v5, v2, [I

    aput v2, v5, v4

    invoke-direct {p0, v3, p3, v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 455
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V

    check-cast v2, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/lyrics/LyricsController;->setLyricConditionChangeListener(Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;)V

    .line 468
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;

    move-object v5, v3

    move-object v6, v0

    move-object v7, p0

    move-object v8, p3

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsController;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;)V

    .line 475
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w()V

    .line 453
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v:Lcom/samsung/android/app/music/lyrics/LyricsController;

    .line 478
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$CommandExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$CommandExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V

    .line 481
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    .line 482
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 483
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez v3, :cond_5

    const-string v5, "actionBarMenuController"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 481
    :cond_5
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    .line 484
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v3, v4, [I

    invoke-direct {p0, v2, p3, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    .line 485
    new-instance v0, Lcom/samsung/android/app/music/player/volume/VolumeController;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/samsung/android/app/music/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 488
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez v2, :cond_6

    const-string v3, "activePlayerController"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;

    .line 490
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v2

    .line 493
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/volume/VolumeController;->a()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v3

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 494
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez v5, :cond_8

    const-string v6, "activePlayerController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 490
    invoke-direct {v0, v2, p1, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    .line 496
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexDragEventListener;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/view/View$OnDragListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 502
    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 503
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 507
    :cond_9
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 508
    new-instance p1, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/legacy/gesture/LegacyAirBrowseController;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v0, v4, [I

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 511
    :cond_a
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v2, v4, [I

    invoke-direct {p0, v0, p3, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    .line 512
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez p1, :cond_b

    const-string v0, "actionBarMenuController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    .line 514
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 516
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 515
    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 514
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    .line 519
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b(Landroid/os/Bundle;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public final a(Landroid/view/View;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
    .locals 12

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a(Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    .line 283
    new-instance v0, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ActivePlayerController;-><init>()V

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {p0, v1, p2, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    .line 285
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f130144

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "view.findViewById(R.id.background_view)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    .line 286
    new-array v1, v2, [I

    .line 284
    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 288
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    .line 289
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    const-string v1, "transition_name_player0"

    .line 290
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Ljava/lang/String;)V

    .line 292
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;)V

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;)V

    .line 288
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    .line 309
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v1

    const-string v4, "applicationContext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 310
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 309
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    .line 313
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez v1, :cond_0

    const-string v4, "activePlayerController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    const-string v4, "FullPlayer"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 314
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o()Landroid/content/Context;

    move-result-object v6

    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez v1, :cond_1

    const-string v4, "activePlayerController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    move-object v8, v1

    check-cast v8, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 318
    iget-object v9, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    if-nez v9, :cond_2

    const-string v1, "forwardRewindInputListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    const v10, 0x7f02013d

    const v11, 0x7f02013b

    move-object v5, v0

    move-object v7, p1

    .line 314
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;II)V

    .line 321
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v1, v2, [I

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 323
    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController;

    .line 324
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 323
    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/music/player/ShuffleController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Z)V

    .line 327
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v2, [I

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->G:Lcom/samsung/android/app/music/player/ShuffleController;

    .line 328
    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController;

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 328
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/player/RepeatController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;ZZ)V

    .line 333
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v2, [I

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->H:Lcom/samsung/android/app/music/player/RepeatController;

    .line 334
    new-instance v0, Lcom/samsung/android/app/music/player/SeekController;

    .line 335
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez v1, :cond_3

    const-string v4, "activePlayerController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    move-object v8, v1

    check-cast v8, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v9, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    if-nez v9, :cond_4

    const-string v1, "forwardRewindInputListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v10, 0x1

    move-object v5, v0

    move-object v7, p1

    .line 334
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/music/player/SeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Z)V

    .line 337
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v2, [I

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 336
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/SeekController;

    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 341
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 340
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    .line 343
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v4}, Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 355
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    if-eqz v1, :cond_5

    .line 356
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    goto :goto_0

    .line 358
    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    sget-object v4, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;->a()[I

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 354
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s:Lcom/samsung/android/app/music/player/fullplayer/ListButtonController;

    .line 361
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "activity.supportFragmentManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {v0, v1, v4, p1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/support/v4/app/FragmentManager;Landroid/view/View;)V

    .line 364
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v5, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 363
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

    .line 366
    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/FavoriteController;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    .line 367
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    if-eqz v1, :cond_6

    .line 368
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    goto :goto_1

    .line 370
    :cond_6
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    sget-object v4, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;->a()[I

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-direct {p0, v1, p2, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 366
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Lcom/samsung/android/app/music/player/FavoriteController;

    .line 373
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 374
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    if-eqz v1, :cond_7

    .line 375
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v1, v3, [I

    aput v2, v1, v2

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    goto :goto_2

    .line 377
    :cond_7
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;->a()[I

    move-result-object v1

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 381
    :goto_2
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 382
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Z

    if-eqz p1, :cond_8

    .line 383
    move-object p1, v0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a:Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController$Companion;->a()[I

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    goto :goto_3

    .line 385
    :cond_8
    move-object p1, v0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v1, v3, [I

    aput v2, v1, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Lcom/samsung/android/app/music/player/PlayerGestureViCache;[I)V

    .line 381
    :goto_3
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p:Lcom/samsung/android/app/music/mediaroute/ui/MediaRouteController;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->a(Lcom/samsung/android/app/music/player/volume/VolumeControllable$OnVolumeUpdateListener;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 621
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    const-string v1, "key_view_type"

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 621
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->b(Landroid/os/Bundle;)V

    .line 626
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    if-nez p1, :cond_2

    const-string v0, "emptyMetaController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Z)V

    return-void
.end method

.method public final b()Z
    .locals 3

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r()Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/SeekController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final c()V
    .locals 1

    .line 229
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 235
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e()V

    .line 238
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;

    if-nez v0, :cond_0

    const-string v1, "emptyMetaController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$EmptyMetaController;->a(Z)V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->g()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->h()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()Z
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->i()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->j()V

    :cond_0
    return-void
.end method

.method public k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 724
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "EmptyMusicMetadata.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public l()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->a:Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail$Companion;->a()Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final m()Lcom/samsung/android/app/music/activity/BaseServiceActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 636
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    :pswitch_0
    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v1, :cond_1

    .line 635
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;

    if-eqz v1, :cond_3

    .line 636
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_4

    .line 639
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 663
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    if-eqz v1, :cond_4

    .line 661
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_7

    goto :goto_0

    .line 656
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez p1, :cond_1

    const-string p2, "activePlayerController"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/ActivePlayerController;->e()V

    goto :goto_1

    .line 651
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    .line 652
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/music/ActivePlayerController;

    if-nez p1, :cond_3

    const-string p2, "activePlayerController"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/ActivePlayerController;->d()V

    goto :goto_1

    .line 661
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;

    if-eqz v1, :cond_5

    .line 662
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexSeekController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-eqz v1, :cond_6

    .line 663
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .line 244
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->release()V

    return-void
.end method
