.class public final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;,
        Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Z

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

.field private k:Landroid/net/Uri;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final p:Lkotlin/Lazy;

.field private final q:Lkotlin/Lazy;

.field private final r:Lkotlin/Lazy;

.field private final s:Lkotlin/Lazy;

.field private final t:Lkotlin/Lazy;

.field private final u:Lkotlin/Lazy;

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "albumView"

    const-string v4, "getAlbumView()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "albumViewStroke"

    const-string v4, "getAlbumViewStroke()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "animationView"

    const-string v4, "getAnimationView()Landroid/support/constraint/ConstraintLayout;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "viewUpdateHandler"

    const-string v4, "getViewUpdateHandler()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lockGestureDetector"

    const-string v4, "getLockGestureDetector()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nonPlaybackAlbumTopMargin"

    const-string v4, "getNonPlaybackAlbumTopMargin()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackAlbumTopMargin"

    const-string v4, "getPlaybackAlbumTopMargin()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nonPlaybackAlbumRatio"

    const-string v4, "getNonPlaybackAlbumRatio()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackAlbumRatio"

    const-string v4, "getPlaybackAlbumRatio()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "nonPlaybackTitleTopMargin"

    const-string v4, "getNonPlaybackTitleTopMargin()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackTitleTopMargin"

    const-string v4, "getPlaybackTitleTopMargin()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b:Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c:Landroid/content/Context;

    .line 45
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$albumView$2;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$albumView$2;-><init>(Landroid/view/View;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d:Lkotlin/Lazy;

    .line 46
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$albumViewStroke$2;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$albumViewStroke$2;-><init>(Landroid/view/View;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->e:Lkotlin/Lazy;

    .line 47
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;-><init>(Landroid/view/View;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->f:Lkotlin/Lazy;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->g:Z

    .line 51
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$viewUpdateHandler$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->h:Lkotlin/Lazy;

    .line 54
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$lockGestureDetector$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->i:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->m:Z

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->n:Z

    .line 95
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string v0, "EmptyMediaChangeObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 99
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->p:Lkotlin/Lazy;

    .line 102
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackAlbumTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackAlbumTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->q:Lkotlin/Lazy;

    .line 105
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumRatio$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackAlbumRatio$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->r:Lkotlin/Lazy;

    .line 108
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackAlbumRatio$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackAlbumRatio$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->s:Lkotlin/Lazy;

    .line 111
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackTitleTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$nonPlaybackTitleTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->t:Lkotlin/Lazy;

    .line 114
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackTitleTopMargin$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$playbackTitleTopMargin$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->u:Lkotlin/Lazy;

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object p2

    const-string v0, "animationView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "animationView.resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    const-string v1, "animationView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    const-string v1, "animationView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "animationView.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f100029

    .line 247
    invoke-virtual {v0, v2, v1, p1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 248
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 120
    iput p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->v:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/net/Uri;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->k:Landroid/net/Uri;

    return-object p0
.end method

.method private final a()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final a(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 180
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p1

    const v0, 0x7f1000b6

    .line 181
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-LockPlayer"

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlbumArt albumId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;IJ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(IJ)V

    return-void
.end method

.method private final a(ZZ)V
    .locals 3

    .line 207
    new-instance v0, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 209
    iget v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->v:I

    const v2, 0x7f130332

    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/ConstraintSet;->constrainMaxWidth(II)V

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b(Z)F

    move-result v1

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/support/constraint/ConstraintSet;->constrainPercentWidth(IF)V

    .line 214
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->g:Z

    if-eqz v1, :cond_0

    const v1, 0x7f130331

    .line 218
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c(Z)F

    move-result v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintSet;->setGuidelinePercent(IF)V

    const v1, 0x7f130070

    const/4 v2, 0x3

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d(Z)I

    move-result p1

    .line 220
    invoke-virtual {v0, v1, v2, p1}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    :cond_0
    if-eqz p2, :cond_1

    .line 227
    invoke-static {}, Lcom/samsung/android/app/music/util/TransitionUtils;->a()Landroid/transition/Transition;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 228
    invoke-virtual {p1, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 229
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p2, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c()Landroid/support/constraint/ConstraintLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    return-void
.end method

.method private final b(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->i()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->h()F

    move-result p1

    :goto_0
    return p1
.end method

.method private final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final c(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->g()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->f()F

    move-result p1

    :goto_0
    return p1
.end method

.method private final c()Landroid/support/constraint/ConstraintLayout;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/view/View;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final d(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->k()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->j()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->c:Landroid/content/Context;

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    return-object v0
.end method

.method private final e()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    return-object v0
.end method

.method private final f()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->p:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final g()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->q:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final h()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->r:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final i()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->s:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final j()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->t:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final k()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->u:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final l()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->j:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->e()Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector;->a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->j:Lcom/samsung/android/app/music/player/lockplayer/LockGestureDetector$OnGestureListener;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->l()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->m:Z

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->n:Z

    return v0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v1

    .line 195
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->k:Landroid/net/Uri;

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$onMetadataChanged$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;IJ)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->getState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->l:Z

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->l:Z

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->d()Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$ViewUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "mediaChangeObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->o:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public setState(Z)V
    .locals 2

    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->n:Z

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->l:Z

    .line 66
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->l:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a(ZZ)V

    .line 67
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->m:Z

    if-eqz p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$1;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p1

    const-string v1, "albumView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b()Landroid/view/View;

    move-result-object p1

    const-string v1, "albumViewStroke"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->m:Z

    if-eqz p1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$state$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->a()Landroid/widget/ImageView;

    move-result-object p1

    const-string v0, "albumView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;->b()Landroid/view/View;

    move-result-object p1

    const-string v1, "albumViewStroke"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
