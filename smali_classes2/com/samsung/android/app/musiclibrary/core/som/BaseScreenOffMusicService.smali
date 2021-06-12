.class public abstract Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;,
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;,
        Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$Companion;

.field private static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SOM"

.field private static final NOTIFY_EXTRA_VISIBLE:Ljava/lang/String; = "visible"

.field public static final TAG:Ljava/lang/String; = "ScreenOffMusicService"


# instance fields
.field private activeQueueType:I

.field private final animationStater:Ljava/lang/Runnable;

.field private cancel:Z

.field private componentName:Landroid/content/ComponentName;

.field private decorView:Landroid/view/View;

.field private dialog:Landroid/app/Dialog;

.field private final eventReceiver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;

.field private finished:Z

.field private isDestroyed:Z

.field private final phoneStateListener:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$phoneStateListener$1;

.field private playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

.field private playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

.field private screenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

.field private screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

.field private screenOffMusicView:Landroid/view/View;

.field private final serviceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;

.field private serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->Companion:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;

    .line 134
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$animationStater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->animationStater:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$phoneStateListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$phoneStateListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->phoneStateListener:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$phoneStateListener$1;

    .line 155
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->eventReceiver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;

    return-void
.end method

.method public static final synthetic access$finishImmediate(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    return-void
.end method

.method public static final synthetic access$getActiveQueueType$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->activeQueueType:I

    return p0
.end method

.method public static final synthetic access$getCancel$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancel:Z

    return p0
.end method

.method public static final synthetic access$getFinished$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finished:Z

    return p0
.end method

.method public static final synthetic access$getPlayController$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    if-nez p0, :cond_0

    const-string v0, "playController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getPlayingItemText$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    if-nez p0, :cond_0

    const-string v0, "playingItemText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScreenOffControlObserver$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    if-nez p0, :cond_0

    const-string v0, "screenOffControlObserver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScreenOffMusicHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p0, :cond_0

    const-string v0, "screenOffMusicHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScreenOffMusicView$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Landroid/view/View;
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "screenOffMusicView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$goToSleep(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->goToSleep()V

    return-void
.end method

.method public static final synthetic access$isDestroyed$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    return p0
.end method

.method public static final synthetic access$performKeyDown(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyDown(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$performKeyUp(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyUp(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setActiveQueueType$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->activeQueueType:I

    return-void
.end method

.method public static final synthetic access$setCancel$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancel:Z

    return-void
.end method

.method public static final synthetic access$setController(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setController(I)V

    return-void
.end method

.method public static final synthetic access$setDestroyed$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    return-void
.end method

.method public static final synthetic access$setFinished$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finished:Z

    return-void
.end method

.method public static final synthetic access$setPlayController$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    return-void
.end method

.method public static final synthetic access$setPlayingItemText$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    return-void
.end method

.method public static final synthetic access$setScreenOffControlObserver$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    return-void
.end method

.method public static final synthetic access$setScreenOffMusicHandler$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    return-void
.end method

.method public static final synthetic access$setScreenOffMusicView$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    return-void
.end method

.method private final cancelScreenOff()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "screenOffMusicView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->animationStater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez v0, :cond_1

    const-string v1, "screenOffMusicHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private final createViewComponents(Landroid/content/Context;)V
    .locals 11

    const-string v0, "layout_inflater"

    .line 269
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/view/LayoutInflater;

    .line 270
    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_screen_off_music_common:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 271
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->control_buttons:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getControlButtonsLayoutResId()I

    move-result v3

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 273
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FingerPrintUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->music_core_screen_off_music_control_space_bottom_fingerprint:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const-string v3, "controlButtons"

    .line 276
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 280
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x10301e3

    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const-string v2, "dialog"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_2

    const-string v3, "dialog"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 289
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    if-nez v3, :cond_3

    const-string v4, "dialog"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x106000d

    .line 290
    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 292
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->createWindowAttributes(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const-string v4, "window"

    .line 293
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 294
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_4

    .line 295
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;I)V

    .line 297
    :cond_4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "window.decorView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    .line 298
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const-string v3, "window.windowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->windowManager:Landroid/view/WindowManager;

    .line 299
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->windowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_5

    const-string v3, "windowManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    if-nez v3, :cond_6

    const-string v4, "decorView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_9

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    if-nez v0, :cond_7

    const-string v2, "decorView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    if-nez v2, :cond_8

    const-string v3, "decorView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    .line 306
    sget v3, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_BACK:I

    or-int/2addr v2, v3

    .line 307
    sget v3, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_HOME:I

    or-int/2addr v2, v3

    .line 308
    sget v3, Lcom/samsung/android/app/music/support/samsung/app/SemStatusBarManagerCompat;->DISABLE_RECENT:I

    or-int/2addr v2, v3

    .line 307
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_9
    const-string v0, "view"

    .line 311
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->initializeViews(Landroid/content/Context;Landroid/view/View;)V

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setOnKeyListener()V

    return-void

    .line 269
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final createWindowAttributes(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 317
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    const v2, 0x12607a0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/16 v1, 0x20

    .line 329
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 330
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 331
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 333
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 337
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    const-string v2, "componentName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    const-string v2, "componentName"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private final dumpStack()V
    .locals 6

    .line 612
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 614
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 615
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const-string v1, "SMUSIC-SOM"

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const-string v5, "elements[3]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "elements"

    .line 618
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getCallStack([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 622
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private final finishImmediate()V
    .locals 2

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService finishImmediate"

    .line 487
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "dialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 489
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancelScreenOff()V

    .line 490
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->stopSelf()V

    return-void
.end method

.method private final getActiveMusicMetadata(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 254
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    const-string v0, "ServiceCoreUtils.getRadioMetadata()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    const-string v0, "ServiceCoreUtils.getMusicMetadata()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getActiveQueueTypeByPref()I
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "queue_type"

    const/4 v2, 0x0

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final getCallStack([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p3, p2

    .line 638
    array-length v1, p1

    if-ge v1, p3, :cond_0

    array-length p3, p1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 640
    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final goToSleep()V
    .locals 3

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService goToSleep()"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dumpStack()V

    .line 475
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancel:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService goToSleep() but it is already canceled."

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "power"

    .line 480
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/os/PowerManager;

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 479
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/android/os/PowerManagerCompat;->goToSleep(Landroid/os/PowerManager;J)V

    const/4 v0, 0x1

    .line 483
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setCancel(Z)V

    return-void

    .line 480
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final initializeViews(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 440
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->screen_off_music_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.screen_off_music_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    .line 443
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getBrandNameStringResId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    .line 446
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    if-nez v0, :cond_0

    const-string v1, "playController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$initializeViews$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$initializeViews$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->setControllerClickListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;)V

    .line 455
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V

    .line 457
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    .line 458
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_1

    const-string p2, "screenOffMusicHandler"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 459
    :cond_1
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ServiceAnimationListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 458
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_2

    const-string p2, "screenOffMusicHandler"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    if-nez p2, :cond_3

    const-string v1, "playingItemText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_4

    const-string p2, "screenOffMusicHandler"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    if-nez p2, :cond_5

    const-string v1, "playController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 463
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_6

    const-string p2, "screenOffMusicHandler"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V

    .line 464
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p2, :cond_7

    const-string v0, "screenOffMusicHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffControlObserver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    if-nez p1, :cond_8

    const-string p2, "screenOffMusicView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->animationStater:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final isMediaKeycode(I)Z
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final listenCallState(Z)V
    .locals 2

    const-string v0, "phone"

    .line 504
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 506
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->phoneStateListener:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$phoneStateListener$1;

    check-cast v1, Landroid/telephony/PhoneStateListener;

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 505
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    .line 504
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final notifyVisibleStatus(Z)V
    .locals 2

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getNotifyAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visible"

    .line 499
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final performKeyDown(I)Z
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 399
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isMediaKeycode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    const-string p1, "GSOM"

    const-string v1, "Back Key"

    .line 391
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    :pswitch_1
    const-string p1, "GSOM"

    const-string v1, "Home Key"

    .line 384
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    if-nez p1, :cond_1

    const-string v1, "screenOffMusicView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    goto :goto_0

    .line 374
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_3

    const-string v1, "screenOffMusicHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->isGoingToScreenOff()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "GSOM"

    const-string v1, "Power Key"

    .line 375
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->goToSleep()V

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancelScreenOff()V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final performKeyUp(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isMediaKeycode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_1

    const-string v1, "screenOffMusicHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->isGoingToScreenOff()Z

    move-result p1

    if-nez p1, :cond_4

    .line 414
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setCancel(Z)V

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    if-nez p1, :cond_2

    const-string v1, "screenOffMusicHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->screenOffMusicView:Landroid/view/View;

    if-nez p1, :cond_3

    const-string v1, "screenOffMusicView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final registerEventReceiver()V
    .locals 2

    .line 512
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->eventReceiver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final requestSystemKeyEvent(Z)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string v1, "componentName"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 347
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;->requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x3
    .end array-data
.end method

.method private final setCancel(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->cancel:Z

    return-void
.end method

.method private final setController(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getRadioPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    :goto_0
    return-void
.end method

.method private final setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playController:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    if-nez v0, :cond_0

    const-string v1, "playController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    return-void
.end method

.method private final setOnKeyListener()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v1, "dialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$setOnKeyListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V

    check-cast v1, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private final unregisterEventReceiver()V
    .locals 1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->eventReceiver:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$eventReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected abstract bindToService()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
.end method

.method protected abstract getBrandNameStringResId()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method protected abstract getControlButtonsLayoutResId()I
.end method

.method protected abstract getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
.end method

.method protected abstract getNotifyAction()Ljava/lang/String;
.end method

.method protected abstract getRadioPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCloseClick()V
    .locals 1

    const/4 v0, 0x4

    .line 527
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->performKeyDown(I)Z

    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onCreate()"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 192
    new-instance v0, Landroid/content/ComponentName;

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    const-class v2, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->componentName:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->createViewComponents(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->requestSystemKeyEvent(Z)V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->registerEventReceiver()V

    .line 199
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->notifyVisibleStatus(Z)V

    .line 200
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->listenCallState(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->bindToService()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onDestroy()"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "decorView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    const-string v1, "windowManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->decorView:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v2, "decorView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->listenCallState(Z)V

    .line 222
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->requestSystemKeyEvent(Z)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->unregisterEventReceiver()V

    .line 224
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->notifyVisibleStatus(Z)V

    .line 225
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SMUSIC-SOM"

    const-string p2, "ScreenOffMusicService onServiceConnected()"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    if-nez p1, :cond_2

    .line 231
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 232
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getActiveQueueTypeByPref()I

    move-result p1

    :goto_0
    const-string p2, "SMUSIC-SOM"

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenOffMusicService getActiveQueueType() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->activeQueueType:I

    .line 236
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->activeQueueType:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setController(I)V

    .line 237
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->activeQueueType:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->getActiveMusicMetadata(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->playingItemText:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    if-nez p2, :cond_1

    const-string v0, "playingItemText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceCallbackStub:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SMUSIC-SOM"

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenOffMusicService onServiceDisconnected() - isDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 245
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 246
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->isDestroyed:Z

    if-nez p1, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->finishImmediate()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SMUSIC-SOM"

    const-string p2, "ScreenOffMusicService onStartCommand()"

    .line 208
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->setCancel(Z)V

    const/4 p1, 0x2

    return p1
.end method
