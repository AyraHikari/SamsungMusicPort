.class public abstract Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/activity/ActivityResultDelegator;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/player/ISlidePlayer;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;,
        Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;,
        Lcom/samsung/android/app/music/activity/BaseServiceActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/music/activity/BaseServiceActivity$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui"

.field private static final TAG:Ljava/lang/String; = "Ui"


# instance fields
.field private final activityMediaChangeCenter$delegate:Lkotlin/Lazy;

.field private final activityResultCallback$delegate:Lkotlin/Lazy;

.field private final dialogReceiver$delegate:Lkotlin/Lazy;

.field private final dormancyController$delegate:Lkotlin/Lazy;

.field private isActionbarMenuOpened:Z

.field private musicExitReceiver:Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;

.field private navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

.field private networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private final onMultiWindowModeChangedListener$delegate:Lkotlin/Lazy;

.field private final pendingSceneStateListeners$delegate:Lkotlin/Lazy;

.field private final playerChangeBufferingUpdater$delegate:Lkotlin/Lazy;

.field private final quickConnectListener$delegate:Lkotlin/Lazy;

.field private final quickConnectManager$delegate:Lkotlin/Lazy;

.field private savedState:Landroid/os/Bundle;

.field private final scanListener$delegate:Lkotlin/Lazy;

.field private final simpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

.field private slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "activityMediaChangeCenter"

    const-string v4, "getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerChangeBufferingUpdater"

    const-string v4, "getPlayerChangeBufferingUpdater()Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "quickConnectManager"

    const-string v4, "getQuickConnectManager()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dormancyController"

    const-string v4, "getDormancyController()Lcom/samsung/android/app/music/milk/DormancyController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dialogReceiver"

    const-string v4, "getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "activityResultCallback"

    const-string v4, "getActivityResultCallback()Landroid/util/SparseArray;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onMultiWindowModeChangedListener"

    const-string v4, "getOnMultiWindowModeChangedListener()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scanListener"

    const-string v4, "getScanListener()Landroid/content/BroadcastReceiver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "quickConnectListener"

    const-string v4, "getQuickConnectListener()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "pendingSceneStateListeners"

    const-string v4, "getPendingSceneStateListeners()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->Companion:Lcom/samsung/android/app/music/activity/BaseServiceActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;-><init>([Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->simpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    .line 120
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$activityMediaChangeCenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$activityMediaChangeCenter$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->activityMediaChangeCenter$delegate:Lkotlin/Lazy;

    .line 128
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$playerChangeBufferingUpdater$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$playerChangeBufferingUpdater$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->playerChangeBufferingUpdater$delegate:Lkotlin/Lazy;

    .line 132
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectManager$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->quickConnectManager$delegate:Lkotlin/Lazy;

    .line 136
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dormancyController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dormancyController$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->dormancyController$delegate:Lkotlin/Lazy;

    .line 145
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$dialogReceiver$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->dialogReceiver$delegate:Lkotlin/Lazy;

    .line 153
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$activityResultCallback$2;->INSTANCE:Lcom/samsung/android/app/music/activity/BaseServiceActivity$activityResultCallback$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->activityResultCallback$delegate:Lkotlin/Lazy;

    .line 159
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onMultiWindowModeChangedListener$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onMultiWindowModeChangedListener$delegate:Lkotlin/Lazy;

    .line 173
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$scanListener$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->scanListener$delegate:Lkotlin/Lazy;

    .line 181
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$quickConnectListener$2;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->quickConnectListener$delegate:Lkotlin/Lazy;

    .line 196
    sget-object v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$pendingSceneStateListeners$2;->INSTANCE:Lcom/samsung/android/app/music/activity/BaseServiceActivity$pendingSceneStateListeners$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->pendingSceneStateListeners$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$finishMusicActivity(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->finishMusicActivity()V

    return-void
.end method

.method public static final synthetic access$getNavigationBarController$p(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)Lcom/samsung/android/app/music/view/NavigationBarController;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    return-object p0
.end method

.method public static final synthetic access$setNavigationBarController$p(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/view/NavigationBarController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    return-void
.end method

.method private final finishMusicActivity()V
    .locals 4

    const-string v0, "activity"

    .line 201
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->stopLockTask()V

    :cond_0
    const/4 v0, 0x1

    .line 207
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-Ui"

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishMusicActivity moveTaskToBack is fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->finish()V

    return-void

    .line 201
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->activityMediaChangeCenter$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    return-object v0
.end method

.method private final getActivityResultCallback()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->activityResultCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private final getDormancyController()Lcom/samsung/android/app/music/milk/DormancyController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->dormancyController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/DormancyController;

    return-object v0
.end method

.method private final getOnMultiWindowModeChangedListener()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onMultiWindowModeChangedListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    return-object v0
.end method

.method private final getPendingSceneStateListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/PlayerSceneStateListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->pendingSceneStateListeners$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPlayerChangeBufferingUpdater()Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->playerChangeBufferingUpdater$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;

    return-object v0
.end method

.method private final getQuickConnectListener()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->quickConnectListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    return-object v0
.end method

.method private final getQuickConnectManager()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->quickConnectManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    return-object v0
.end method

.method private final getScanListener()Landroid/content/BroadcastReceiver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->scanListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private final registerQuickConnectListener()V
    .locals 3

    const-string v0, "QuickConnect"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBezelItemSelectedListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getQuickConnectManager()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getQuickConnectListener()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V

    return-void
.end method

.method private final registerScanListener()V
    .locals 2

    .line 531
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 533
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getScanListener()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final setWindowStatusBarFlag(Landroid/app/Activity;)V
    .locals 2

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "a.window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 303
    sget v1, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    .line 301
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 305
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "a.window"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final unregisterQuickConnectListener()V
    .locals 3

    const-string v0, "QuickConnect"

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterBezelItemSelectedListener() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getQuickConnectManager()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->unregisterListener()V

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getQuickConnectManager()Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->terminate()V

    return-void
.end method

.method private final unregisterScanReceiver()V
    .locals 1

    .line 541
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getScanListener()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-nez v0, :cond_0

    .line 764
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPendingSceneStateListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :goto_0
    return-void
.end method

.method public dismissFullPlayer(Z)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 746
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public final getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->dialogReceiver$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 674
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "activityMediaChangeCenter.metadata"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 682
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 678
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 2

    .line 690
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    const-string v1, "activityMediaChangeCenter.subObservable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final initMiniPlayer()V
    .locals 3

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchMusicPlayer"

    const/4 v2, 0x0

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/IntentExtensionKt;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "launchMusicPlayer"

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->savedState:Landroid/os/Bundle;

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "launchMusicPlayer"

    .line 467
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v2, "extra_with"

    .line 468
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->savedState:Landroid/os/Bundle;

    .line 459
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->initMiniPlayer(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final initMiniPlayer(Landroid/os/Bundle;)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer;

    move-object v1, p0

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/SlidePlayer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 481
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Landroid/os/Bundle;)V

    .line 482
    move-object p1, v0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPendingSceneStateListeners()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Ljava/util/List;)V

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPendingSceneStateListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 480
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    return-void
.end method

.method public isFullPlayerActive()Z
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMenuOpened()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isActionbarMenuOpened:Z

    return v0
.end method

.method public launchFullPlayer(Z)V
    .locals 4

    .line 755
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;ZIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "Ui"

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityResultCallback()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;

    if-eqz v0, :cond_0

    const-string v1, "SMUSIC-Ui"

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult activityResultCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resultCode :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;->a(IILandroid/content/Intent;)V

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityResultCallback()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    const/16 v0, 0x2716

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v0, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 409
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "list_items"

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    const-string v2, "is_folder"

    .line 412
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "path"

    .line 413
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    const/4 v4, 0x0

    .line 414
    invoke-static {v3, v1, v0, v4, v2}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/support/v4/app/FragmentActivity;[JLjava/lang/String;ZZ)V

    goto :goto_0

    .line 856
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, v0, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$onActivityResult$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/os/Bundle;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    .line 432
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x32a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onApiCalled(II)V
    .locals 3

    const-string v0, "SMUSIC-Ui"

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reqType : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "rspData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "extra"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "SMUSIC-Ui"

    .line 719
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApiHandled reqId : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reqType : "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rspType : "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 505
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->b()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->simpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->savedState:Landroid/os/Bundle;

    .line 232
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPlayerChangeBufferingUpdater()Lcom/samsung/android/app/music/activity/PlayerChangeBufferingUpdater;

    move-result-object v0

    .line 236
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 237
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 240
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v5, "android.permission.READ_PHONE_STATE"

    const-string v6, "android.permission.GET_ACCOUNTS"

    .line 242
    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    .line 241
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 248
    new-instance v0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 247
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDormancyController()Lcom/samsung/android/app/music/milk/DormancyController;

    move-result-object v0

    .line 251
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 256
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 259
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->setWindowStatusBarFlag(Landroid/app/Activity;)V

    const/4 v0, 0x3

    .line 265
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->setVolumeControlStream(I)V

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerScanListener()V

    .line 268
    new-instance v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    .line 269
    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->musicExitReceiver:Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;

    .line 272
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    .line 273
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 272
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/view/NavigationBarController;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/view/NavigationBarController;-><init>(Landroid/app/Activity;)V

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->simpleActivityLifeCycleAdapter:Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleActivityLifeCycleAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 277
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    .line 282
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 283
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    const-string v0, "MilkServiceHelper.getInstance(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c()Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->d()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->musicExitReceiver:Lcom/samsung/android/app/music/activity/BaseServiceActivity$MusicExitReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterScanReceiver()V

    .line 384
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->release()V

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPendingSceneStateListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityResultCallback()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 389
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDormancyController()Lcom/samsung/android/app/music/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/DormancyController;->b()V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDialogReceiver()Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_2
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a()Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isActionbarMenuOpened:Z

    .line 336
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->unregisterQuickConnectListener()V

    .line 370
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPause()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isActionbarMenuOpened:Z

    .line 329
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onQuickConnectSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onReceiveMediaState(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Ui"

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " scanListener intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 574
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 575
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a()V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a([I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 359
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerQuickConnectListener()V

    .line 365
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getOnMultiWindowModeChangedListener()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 349
    :cond_0
    instance-of v0, p0, Lcom/samsung/android/app/music/main/MainActivity;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 374
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getOnMultiWindowModeChangedListener()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->d()V

    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string v0, "Ui"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onTrimMemory() level :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 442
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a()V

    .line 444
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onTrimMemory(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 702
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onUserInteraction()V

    .line 703
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getDormancyController()Lcom/samsung/android/app/music/milk/DormancyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/DormancyController;->a()V

    :cond_0
    return-void
.end method

.method public onWindowInsetsChanged(Landroid/view/WindowInsets;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final registerActivityResultCallback(ILcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 805
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityResultCallback()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->networkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public removePlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-nez v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getPendingSceneStateListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :goto_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->setContentView(I)V

    const p1, 0x1020002

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$setContentView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$setContentView$1;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setFullPlayerEnterEnabled(Z)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->c(Z)V

    :cond_0
    return-void
.end method

.method public final setMiniPlayerEnabled(Z)V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->slidePlayer:Lcom/samsung/android/app/music/player/SlidePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Z)V

    :cond_0
    return-void
.end method

.method public final setNavigationBackground()V
    .locals 2

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NavigationBarController;->a()V

    :cond_1
    return-void
.end method

.method public final setNavigationBackgroundVisibility()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->navigationBarController:Lcom/samsung/android/app/music/view/NavigationBarController;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/view/NavigationBarController;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)V
    .locals 1

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->registerActivityResultCallback(ILcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)V

    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/ActivityMediaChangeCenterSkeleton;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method
