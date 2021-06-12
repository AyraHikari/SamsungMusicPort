.class public final Lcom/samsung/android/app/music/player/SeekController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;,
        Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;,
        Lcom/samsung/android/app/music/player/SeekController$UiUpdater;,
        Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;,
        Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Landroid/widget/SeekBar;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/support/constraint/Group;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "expandSeekBarManager"

    const-string v4, "getExpandSeekBarManager()Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "uiUpdater"

    const-string v4, "getUiUpdater()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scrubbingBar"

    const-string v4, "getScrubbingBar()Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "seekTouchController"

    const-string v4, "getSeekTouchController()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "seekChangeController"

    const-string v4, "getSeekChangeController()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Z)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forwardRewindInputListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/SeekController;->c:Z

    const v1, 0x7f13028a

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const v1, 0x7f13029b

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->e:Landroid/widget/TextView;

    const v1, 0x7f13029c

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    const v1, 0x7f13019a

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    const v1, 0x7f13029d

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/Group;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->h:Landroid/support/constraint/Group;

    .line 79
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/music/player/SeekController$expandSeekBarManager$2;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/app/music/player/SeekController$expandSeekBarManager$2;-><init>(Lcom/samsung/android/app/music/player/SeekController;Landroid/view/View;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->i:Lkotlin/Lazy;

    .line 82
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/app/music/player/SeekController$uiUpdater$2;-><init>(Lcom/samsung/android/app/music/player/SeekController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->j:Lkotlin/Lazy;

    .line 88
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;

    invoke-direct {v2, p0, p5, p2}, Lcom/samsung/android/app/music/player/SeekController$scrubbingBar$2;-><init>(Lcom/samsung/android/app/music/player/SeekController;ZLandroid/view/View;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->k:Lkotlin/Lazy;

    .line 91
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p5, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;

    invoke-direct {p5, p0}, Lcom/samsung/android/app/music/player/SeekController$seekTouchController$2;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->l:Lkotlin/Lazy;

    .line 97
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p5, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;

    invoke-direct {p5, p0, p3}, Lcom/samsung/android/app/music/player/SeekController$seekChangeController$2;-><init>(Lcom/samsung/android/app/music/player/SeekController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->m:Lkotlin/Lazy;

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/SeekController;->n:Z

    .line 112
    new-instance p2, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SeekController$viewUpdater$1;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->s:Ljava/lang/Runnable;

    .line 120
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->f()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    move-result-object p3

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->g()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;

    move-result-object p3

    check-cast p3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    check-cast p4, Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p4}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    new-instance p3, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "context"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Lcom/samsung/android/app/music/player/SeekController$TalkBackAccessibilityDelegate;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p3, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 125
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    new-instance p3, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p4

    invoke-direct {p3, v0, p4}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController;->c:Z

    if-nez p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->h()V

    .line 132
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    const-string p2, "UserInfoManager.getInstance(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    const-string p2, "UserInfoManager.getInstance(context).userInfoSync"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Z

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V
    .locals 4

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(I)V

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b(J)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->i()V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->f()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->a(Z)V

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(F)V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    goto :goto_1

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    if-eqz p2, :cond_2

    const/4 p2, -0x1

    int-to-long v2, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(J)V

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    if-eq p1, v1, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->e()V

    goto :goto_1

    .line 205
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    :goto_1
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/SeekController;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    return-object p0
.end method

.method private final c()Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/SeekBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    return-object v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->c()Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    return-object v0
.end method

.method private final f()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    return-object v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->e()Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    move-result-object p0

    return-object p0
.end method

.method private final g()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;

    return-object v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/SeekController;)Lcom/samsung/android/app/music/player/SeekController$UiUpdater;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method private final h()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/SeekController;)Landroid/support/constraint/Group;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SeekController;->h:Landroid/support/constraint/Group;

    return-object p0
.end method

.method private final i()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;-><init>(Lcom/samsung/android/app/music/player/SeekController;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final j()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v1, "seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final k()V
    .locals 3

    .line 266
    iget v0, p0, Lcom/samsung/android/app/music/player/SeekController;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 272
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v2, "seekBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->f()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Z

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->k()V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->g()Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SeekController"

    const-string v1, "onMultiWindowSizeChanged"

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->h()V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController;->o:Z

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->k()V

    return-void
.end method

.method public final onDestroyCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->g()V

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
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    const/4 p1, 0x0

    .line 167
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->r:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->f()Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/SeekController$SeekTouchController;->a(Z)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v1, "seekBar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 170
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v1, "seekBar"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Z)V

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/SeekController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/SeekController;->n:Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/player/SeekController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V

    .line 186
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->r:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 231
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController;->q:I

    .line 232
    iget p1, p0, Lcom/samsung/android/app/music/player/SeekController;->q:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    const-string v0, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    .line 236
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioQueueUtils;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController;->p:Z

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->k()V

    return-void
.end method

.method public final onStopCalled()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController;->d()Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->d:Landroid/widget/SeekBar;

    const-string v1, "seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 256
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    :cond_0
    return-void
.end method
