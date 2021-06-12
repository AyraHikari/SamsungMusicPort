.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;,
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;,
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

.field private static final p:Lkotlin/Lazy;


# instance fields
.field private c:Landroid/view/View;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private f:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

.field private g:Lcom/samsung/android/app/music/lyrics/LyricsController;

.field private h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

.field private i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

.field private j:Z

.field private k:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;

.field private final o:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "unlockDistance"

    const-string v4, "getUnlockDistance()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "closer"

    const-string v4, "getCloser()Lcom/samsung/android/app/music/player/lockplayer/LockCloser;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 514
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion$LOG_PRINTABLE$2;->INSTANCE:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion$LOG_PRINTABLE$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 64
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$unlockDistance$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$unlockDistance$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->l:Lkotlin/Lazy;

    .line 65
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->m:Lkotlin/Lazy;

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->n:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;

    .line 405
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
    .locals 7

    .line 362
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    const v1, 0x7f130294

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;-><init>(Landroid/view/View;)V

    const v1, 0x7f1301e6

    .line 364
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    sget-object v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->PrivateVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    const v1, 0x7f1304a1

    .line 366
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 368
    check-cast p1, Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 369
    new-instance v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;

    invoke-direct {v3}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;-><init>()V

    check-cast v3, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    .line 370
    sget-object v6, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->RoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v6, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v6, v4, v5

    sget-object v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Quality:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aput-object v5, v4, v2

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->DRM:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 371
    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Connection:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    const/4 v5, 0x3

    aput-object v2, v4, v5

    sget-object v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 367
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;Ljava/lang/Boolean;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    .line 374
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a()Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez p0, :cond_0

    const-string v0, "viewTypeController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->p:Lkotlin/Lazy;

    return-object v0
.end method

.method private final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 164
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 166
    new-instance p1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$setOnDecorViewTouchListener$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;Landroid/view/View;)V

    check-cast p1, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    .line 165
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V

    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 379
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSaveInstanceState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v0, :cond_1

    const-string v1, "viewTypeController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const-string v1, "key_view_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    return-void
.end method

.method private final b()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)F
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b()F

    move-result p0

    return p0
.end method

.method private final c()Lcom/samsung/android/app/music/player/lockplayer/LockCloser;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->k:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    if-nez p0, :cond_0

    const-string v0, "dragVIManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockCloser;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c()Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 13

    .line 213
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 214
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 585
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    const v1, 0x7f13032e

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.lock_player)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    .line 216
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_0

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initView rootView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_1

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    .line 222
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v5, :cond_2

    const-string v6, "rootView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 220
    :cond_2
    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v1, :cond_3

    :goto_0
    const-string v5, "uiManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v1, v5, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->k:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    .line 224
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById<View>(R.id.lock_player)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    .line 216
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;-><init>(Landroid/support/v4/app/FragmentActivity;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_5

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initView rootView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_6

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    .line 222
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v5, :cond_7

    const-string v6, "rootView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 220
    :cond_7
    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v1, :cond_3

    goto :goto_0

    .line 225
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 599
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v1, :cond_8

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    :goto_2
    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;->a(Landroid/view/View$OnClickListener;)V

    .line 231
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    .line 226
    :cond_9
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v1, :cond_a

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerShortcutText;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    goto :goto_2

    .line 232
    :goto_3
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 613
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    const v1, 0x7f130144

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v0, :cond_b

    const-string v5, "uiManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 234
    :cond_b
    new-instance v5, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 235
    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    iget-object v7, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v7, :cond_c

    const-string v8, "rootView"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v7, "rootView.findViewById(R.id.background_view)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 234
    invoke-direct {v5, v6, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    :goto_4
    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    .line 233
    invoke-static {v0, v5, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 238
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    .line 233
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v0, :cond_e

    const-string v5, "uiManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 234
    :cond_e
    new-instance v5, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 235
    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    iget-object v7, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v7, :cond_f

    const-string v8, "rootView"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v7, "rootView.findViewById(R.id.background_view)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 234
    invoke-direct {v5, v6, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    goto :goto_4

    .line 239
    :goto_5
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 627
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 240
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_10

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_10
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 241
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_11

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_11
    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v7, v1, [I

    aput v4, v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 242
    new-instance v5, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$3;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v5, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V

    .line 262
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v0, :cond_12

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 265
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_13

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_13
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v4, v6, v4

    :goto_6
    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 266
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_7

    .line 240
    :cond_14
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_15

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_15
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 241
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_16

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_16
    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v7, v1, [I

    aput v4, v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 242
    new-instance v5, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$4;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v5, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V

    .line 262
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v0, :cond_17

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_17
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 265
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_18

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_18
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v4, v6, v4

    goto :goto_6

    .line 268
    :goto_7
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 641
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 269
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_19

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_19
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 271
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_1a

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1a
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v4, v6, v4

    :goto_8
    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    goto :goto_a

    .line 273
    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_1c

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1c
    :goto_9
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 275
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_b

    .line 269
    :cond_1d
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_1e

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1e
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 270
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 271
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_1f

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1f
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v4, v6, v4

    goto :goto_8

    .line 273
    :cond_20
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_1c

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    goto :goto_9

    .line 277
    :goto_b
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 655
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 279
    new-instance v0, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ActivePlayerController;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_21

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_21
    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v6, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 281
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    if-nez v5, :cond_22

    const-string v6, "activePlayController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_22
    const-string v6, "LockPlayer"

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$5;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V

    .line 292
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 281
    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 293
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v8, :cond_23

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_23
    iget-object v9, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    if-nez v9, :cond_24

    const-string v5, "activePlayController"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_24
    iget-object v10, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    if-nez v10, :cond_25

    const-string v5, "forwardRewindInputListener"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_25
    const v11, 0x7f02013d

    const v12, 0x7f02013b

    move-object v6, v0

    .line 293
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;II)V

    .line 296
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_26

    :goto_c
    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_26
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_d

    .line 279
    :cond_27
    new-instance v0, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ActivePlayerController;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_28

    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_28
    move-object v6, v0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v6, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 281
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    if-nez v5, :cond_29

    const-string v6, "activePlayController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_29
    const-string v6, "LockPlayer"

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$6;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V

    .line 292
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 281
    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 293
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v8, :cond_2a

    const-string v5, "rootView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2a
    iget-object v9, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    if-nez v9, :cond_2b

    const-string v5, "activePlayController"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2b
    iget-object v10, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    if-nez v10, :cond_2c

    const-string v5, "forwardRewindInputListener"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2c
    const v11, 0x7f02013d

    const v12, 0x7f02013b

    move-object v6, v0

    .line 293
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;II)V

    .line 296
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_26

    goto :goto_c

    .line 298
    :goto_d
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 669
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 299
    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_2d

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2d
    invoke-direct {v0, v5, v6, v4}, Lcom/samsung/android/app/music/player/ShuffleController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Z)V

    .line 300
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_2e

    :goto_e
    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2e
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 301
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_f

    .line 299
    :cond_2f
    new-instance v0, Lcom/samsung/android/app/music/player/ShuffleController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_30

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_30
    invoke-direct {v0, v5, v6, v4}, Lcom/samsung/android/app/music/player/ShuffleController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Z)V

    .line 300
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_2e

    goto :goto_e

    .line 303
    :goto_f
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 683
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 304
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;

    .line 305
    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_31

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_31
    new-instance v7, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$7;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    .line 304
    invoke-direct {v0, v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v6, :cond_32

    const-string v7, "uiManager"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_32
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v6, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 315
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 316
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "supportFragmentManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v7, :cond_33

    const-string v8, "rootView"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 316
    :cond_33
    invoke-direct {v0, v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/support/v4/app/FragmentManager;Landroid/view/View;)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_34

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_34
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v3, v6, v4

    :goto_10
    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 320
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_11

    .line 304
    :cond_35
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;

    .line 305
    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_36

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_36
    new-instance v7, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$8;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v7, Landroid/view/View$OnClickListener;

    .line 304
    invoke-direct {v0, v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockListButtonController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v6, :cond_37

    const-string v7, "uiManager"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_37
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v6, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 315
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 316
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "supportFragmentManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v7, :cond_38

    const-string v8, "rootView"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 316
    :cond_38
    invoke-direct {v0, v5, v6, v7}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/support/v4/app/FragmentManager;Landroid/view/View;)V

    .line 319
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v5, :cond_39

    const-string v6, "viewTypeController"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_39
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v3, v6, v4

    goto :goto_10

    .line 322
    :goto_11
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 697
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 323
    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController;

    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_3a

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3a
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/FavoriteController;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_3b

    :goto_12
    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3b
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 325
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_13

    .line 323
    :cond_3c
    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController;

    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_3d

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3d
    invoke-direct {v0, v5, v6}, Lcom/samsung/android/app/music/player/FavoriteController;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_3b

    goto :goto_12

    .line 327
    :goto_13
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 711
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 328
    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_3e

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3e
    invoke-direct {v0, v5, v6, v4, v1}, Lcom/samsung/android/app/music/player/RepeatController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;ZZ)V

    .line 329
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_3f

    :goto_14
    const-string v6, "uiManager"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3f
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-static {v5, v0, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 330
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_15

    .line 328
    :cond_40
    new-instance v0, Lcom/samsung/android/app/music/player/RepeatController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v6, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v6, :cond_41

    const-string v7, "rootView"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_41
    invoke-direct {v0, v5, v6, v4, v1}, Lcom/samsung/android/app/music/player/RepeatController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;ZZ)V

    .line 329
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v5, :cond_3f

    goto :goto_14

    .line 333
    :goto_15
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 725
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    const v2, 0x7f1302a0

    if-eqz v0, :cond_44

    .line 335
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController;

    .line 336
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v5, :cond_42

    const-string v6, "rootView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 338
    :cond_42
    sget-object v6, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 335
    invoke-direct {v0, v5, v2, v6}, Lcom/samsung/android/app/music/lyrics/LyricsController;-><init>(Landroid/view/View;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders;)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v2, :cond_43

    const-string v5, "viewTypeController"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_43
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v1, v6, v4

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 341
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$9;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    :goto_16
    check-cast v1, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->setLyricConditionChangeListener(Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;)V

    .line 349
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 339
    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g:Lcom/samsung/android/app/music/lyrics/LyricsController;

    .line 350
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_17

    .line 335
    :cond_44
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsController;

    .line 336
    iget-object v5, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v5, :cond_45

    const-string v6, "rootView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 338
    :cond_45
    sget-object v6, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 335
    invoke-direct {v0, v5, v2, v6}, Lcom/samsung/android/app/music/lyrics/LyricsController;-><init>(Landroid/view/View;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders;)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v2, :cond_46

    const-string v5, "viewTypeController"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_46
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v6, v1, [I

    aput v1, v6, v4

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 341
    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$initView$$inlined$tsp$lambda$10;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    goto :goto_16

    .line 351
    :goto_17
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 739
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 352
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v1, :cond_47

    const-string v2, "rootView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v2, :cond_48

    const-string v4, "viewTypeController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_48
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v1, :cond_49

    :goto_18
    const-string v2, "viewTypeController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 354
    :cond_49
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 353
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    .line 356
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_19

    .line 352
    :cond_4a
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez v1, :cond_4b

    const-string v2, "rootView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4b
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v2, :cond_4c

    const-string v4, "viewTypeController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4c
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$CloseButtonController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v1, :cond_49

    goto :goto_18

    :goto_19
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private final e()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.app.music.core.state.FINISHED_HIDE_NOTIFICATION"

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 388
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->j:Z

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f()V

    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Landroid/view/View;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final f()V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->j:Z

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->o:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$intentReceiver$1;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SMUSIC-LockPlayer"

    const-string v1, "unregisterReceiver Already unregistered."

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/lyrics/LyricsController;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->g:Lcom/samsung/android/app/music/lyrics/LyricsController;

    if-nez p0, :cond_0

    const-string v0, "lyricsController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    if-nez p0, :cond_0

    const-string v0, "activePlayController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    if-nez p0, :cond_0

    const-string v0, "albumArt"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->finish()V

    const v0, 0x7f050006

    .line 160
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez p1, :cond_0

    const-string v0, "viewTypeController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a()I

    move-result p1

    .line 132
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 545
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v0, :cond_1

    :goto_0
    const-string v1, "uiManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->release()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->b:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;

    .line 559
    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$Companion;)Z

    move-result v0

    const v1, 0x7f040103

    .line 136
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->setContentView(I)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v0, :cond_3

    const-string v1, "viewTypeController"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040103

    .line 75
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "window"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "window"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;I)V

    .line 83
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->e()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->n:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$keyListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->d()V

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->f()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    if-nez v0, :cond_0

    const-string v1, "uiManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->release()V

    .line 152
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_view_type"

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->i:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    if-nez v1, :cond_0

    const-string v2, "viewTypeController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->k:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    if-nez v0, :cond_0

    const-string v1, "dragVIManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->a()V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-LockPlayer"

    const-string v1, "onStart isDesktopMode true & finish"

    .line 120
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityCompat;->a(Landroid/app/Activity;Z)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->finish()V

    :cond_1
    return-void
.end method
