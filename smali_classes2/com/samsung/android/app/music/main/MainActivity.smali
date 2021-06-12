.class public Lcom/samsung/android/app/music/main/MainActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;
.implements Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.implements Lcom/samsung/android/app/music/main/BottomTabManagerGetter;
.implements Lcom/samsung/android/app/music/milk/event/EventManageable;
.implements Lcom/samsung/android/app/music/navigate/NavigationManager;
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;
.implements Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final _bottomTabManager$delegate:Lkotlin/Lazy;

.field private actionMode:Landroid/support/v7/view/ActionMode;

.field private final appUpdateChecker$delegate:Lkotlin/Lazy;

.field private final bottomBarHostImpl$delegate:Lkotlin/Lazy;

.field private eventManager:Lcom/samsung/android/app/music/main/EventManagerTask;

.field private launchSearchEnabled:Z

.field private final localTracksObservable$delegate:Lkotlin/Lazy;

.field private final mainActivityTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/main/MainActivityTask;",
            ">;"
        }
    .end annotation
.end field

.field private final navigableImpls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/navigate/Navigable;",
            ">;"
        }
    .end annotation
.end field

.field private final preExecutionTaskManager$delegate:Lkotlin/Lazy;

.field private preconditionNlg:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

.field private final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "preferences"

    const-string v4, "getPreferences()Landroid/content/SharedPreferences;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "appUpdateChecker"

    const-string v4, "getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "preExecutionTaskManager"

    const-string v4, "getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "_bottomTabManager"

    const-string v4, "get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "localTracksObservable"

    const-string v4, "getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MainActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bottomBarHostImpl"

    const-string v4, "getBottomBarHostImpl()Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 63
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$preferences$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$preferences$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preferences$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->launchSearchEnabled:Z

    .line 73
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$appUpdateChecker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$appUpdateChecker$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->appUpdateChecker$delegate:Lkotlin/Lazy;

    .line 77
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$preExecutionTaskManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$preExecutionTaskManager$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preExecutionTaskManager$delegate:Lkotlin/Lazy;

    .line 81
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$_bottomTabManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$_bottomTabManager$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->_bottomTabManager$delegate:Lkotlin/Lazy;

    .line 85
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$localTracksObservable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$localTracksObservable$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->localTracksObservable$delegate:Lkotlin/Lazy;

    .line 89
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MainActivity$bottomBarHostImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MainActivity$bottomBarHostImpl$2;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->bottomBarHostImpl$delegate:Lkotlin/Lazy;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v1, Lcom/samsung/android/app/music/main/BixbyV1Task;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/BixbyV1Task;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/samsung/android/app/music/main/PermissionLegalCheckTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/PermissionLegalCheckTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/samsung/android/app/music/main/ClearLegacySettingsTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/ClearLegacySettingsTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/samsung/android/app/music/main/AnalyticsTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/AnalyticsTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/samsung/android/app/music/main/FullBgTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/FullBgTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/SpotifyCountryCheckTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lcom/samsung/android/app/music/main/MilkTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MilkTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicModeTipTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/samsung/android/app/music/main/LoginActivityTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/LoginActivityTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/EventManagerTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/main/NavigationTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/NavigationTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/samsung/android/app/music/main/HandleIntentTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/HandleIntentTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/samsung/android/app/music/main/LocalSyncTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/LocalSyncTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->g:Z

    if-eqz v1, :cond_2

    .line 122
    new-instance v1, Lcom/samsung/android/app/music/main/BargeInTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/BargeInTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    .line 126
    new-instance v1, Lcom/samsung/android/app/music/main/BackgroundRestrictTask;

    invoke-direct {v1}, Lcom/samsung/android/app/music/main/BackgroundRestrictTask;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v1, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;

    invoke-direct {v1}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/samsung/android/app/music/navigate/NavigableBrowseImpl;

    invoke-direct {v1}, Lcom/samsung/android/app/music/navigate/NavigableBrowseImpl;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->navigableImpls:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMainActivityTasks$p(Lcom/samsung/android/app/music/main/MainActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$get_bottomTabManager$p(Lcom/samsung/android/app/music/main/MainActivity;)Lcom/samsung/android/app/music/activity/BottomTabManager;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p0

    return-object p0
.end method

.method private final getBottomBarHostImpl()Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->bottomBarHostImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    return-object v0
.end method

.method private final getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->localTracksObservable$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    return-object v0
.end method

.method private final get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->_bottomTabManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/BottomTabManager;

    return-object v0
.end method


# virtual methods
.method public doOnPrepare(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getBottomBarHostImpl()Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;->doOnPrepare(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final getActionMode()Landroid/support/v7/view/ActionMode;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->actionMode:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method public final getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->appUpdateChecker$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/update/AppUpdateChecker;

    return-object v0
.end method

.method public getAppUpdateStatus()I
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->b()I

    move-result v0

    return v0
.end method

.method public getBottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalTracksCount()I
    .locals 1

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method public final getNavigableImpls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/navigate/Navigable;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->navigableImpls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preExecutionTaskManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    return-object v0
.end method

.method public final getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preferences$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MainActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSelectedTabId()I
    .locals 1

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d()I

    move-result v0

    return v0
.end method

.method public final isActionMode()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->actionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 4

    .line 381
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksCount()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "applicationContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x10100

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 386
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/app/music/main/MainActivity;->launchSearchEnabled:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public launchEventWeb()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->eventManager:Lcom/samsung/android/app/music/main/EventManagerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/EventManagerTask;->a()V

    :cond_0
    return-void
.end method

.method public launchSearch()V
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECH"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/main/MainActivity;->selectTab(II)V

    goto :goto_0

    .line 372
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/activity/BottomTabManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1036
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 317
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 266
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onAttachedToWindow()V

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/view/ViewCompat;->twSetDrawDuringWindowsAnimating(Landroid/view/View;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 164
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MainActivity$onCreate$3;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    .line 182
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;)V

    .line 185
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    const v0, 0x7f04010a

    .line 187
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setContentView(I)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 191
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;-><init>(Lcom/samsung/android/app/music/main/MainActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 197
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 640
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 201
    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {v2, p0, p1, v3}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/main/ListSceneManager;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/main/ListSceneManager;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->initMiniPlayer()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 908
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 275
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 812
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 242
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->e(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 508
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 139
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivity;

    .line 299
    iget-object v1, v1, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 972
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 300
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 748
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 230
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->c(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    return-void
.end method

.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b()V

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/VersionManager;->a(Landroid/content/Context;)V

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->c()V

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 330
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->reloadQueue()V

    .line 331
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a:Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    :goto_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 540
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 147
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreExecutionTaskCompleted()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getPreExecutionTaskManager()Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c()V

    return-void
.end method

.method public onPreExecutionTaskFinished()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1072
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 363
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->h(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 940
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 287
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public onQuickConnectSelected()Z
    .locals 1

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->d()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onResume()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 716
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 226
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->d(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 572
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 158
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1004
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 310
    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 211
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 684
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 220
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 780
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 236
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    const/4 v0, 0x0

    .line 349
    check-cast v0, Landroid/support/v7/view/ActionMode;

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->actionMode:Landroid/support/v7/view/ActionMode;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setTabEnabled(IZ)V

    .line 351
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setTabEnabled(IZ)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setFullPlayerEnterEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1042
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 354
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 339
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity;->actionMode:Landroid/support/v7/view/ActionMode;

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setTabEnabled(IZ)V

    const/4 v1, 0x1

    .line 341
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setTabEnabled(IZ)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MainActivity;->setFullPlayerEnterEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1040
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 344
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onUserInteraction()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 844
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 250
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/main/MainActivityTask;->f(Lcom/samsung/android/app/music/main/MainActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVerifyPreconditionFinished()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preconditionNlg:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;->onVerifyPreconditionFinished()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 254
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onWindowFocusChanged(Z)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->mainActivityTasks:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 876
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/main/MainActivityTask;

    .line 257
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask;->a(Lcom/samsung/android/app/music/main/MainActivity;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 3

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 392
    invoke-static {p0}, Lcom/samsung/android/app/music/main/MainActivity;->access$get_bottomTabManager$p(Lcom/samsung/android/app/music/main/MainActivity;)Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 394
    invoke-static {p0}, Lcom/samsung/android/app/music/main/MainActivity;->access$get_bottomTabManager$p(Lcom/samsung/android/app/music/main/MainActivity;)Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->selectTab(II)V

    goto :goto_0

    .line 1079
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivity$selectTab$$inlined$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/main/MainActivity;II)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V
    .locals 1

    const-string v0, "nlg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity;->preconditionNlg:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    :cond_0
    return-void
.end method

.method public setAppUpdateStatus(I)V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getAppUpdateChecker()Lcom/samsung/android/app/music/update/AppUpdateChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    return-void
.end method

.method public final setEventManager(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 1

    const-string v0, "eventManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity;->eventManager:Lcom/samsung/android/app/music/main/EventManagerTask;

    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lcom/samsung/android/app/music/main/MainActivity;->launchSearchEnabled:Z

    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    return-void
.end method

.method public final setPreconditionNlg(Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;)V
    .locals 1

    const-string v0, "preconditionNlg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity;->preconditionNlg:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    return-void
.end method

.method public final varargs setShowingAnimation([Landroid/view/View;)V
    .locals 5

    const-string v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 418
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->get_bottomTabManager()Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MainActivity;->getLocalTracksObservable()Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    return-void
.end method
