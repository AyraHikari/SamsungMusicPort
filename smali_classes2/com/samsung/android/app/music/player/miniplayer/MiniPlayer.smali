.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;,
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private i:Landroid/view/View;

.field private j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

.field private k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

.field private l:Lcom/samsung/android/app/music/ActivePlayerController;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private n:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

.field private o:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

.field private p:I

.field private q:Z

.field private final r:Landroid/support/v7/app/AppCompatActivity;

.field private final s:Landroid/view/View$OnClickListener;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "uiManager"

    const-string v4, "getUiManager()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerSceneStatePublisher"

    const-string v4, "getPlayerSceneStatePublisher()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerLogger"

    const-string v4, "getPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "adPlayerLogger"

    const-string v4, "getAdPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Landroid/support/v7/app/AppCompatActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->s:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->u:Landroid/view/View$OnClickListener;

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Landroid/support/v7/app/AppCompatActivity;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$uiManager$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d:Lkotlin/Lazy;

    .line 39
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerSceneStatePublisher$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e:Lkotlin/Lazy;

    .line 45
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerLogger$2;->INSTANCE:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$playerLogger$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->g:Lkotlin/Lazy;

    .line 46
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;->INSTANCE:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$adPlayerLogger$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->h:Lkotlin/Lazy;

    const p1, 0x7f1000b9

    .line 57
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:I

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;

    return-object p0
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 4

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    instance-of v1, p1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    if-eqz v1, :cond_0

    .line 133
    check-cast p1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method private final e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    return-object v0
.end method

.method private final f()Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    return-object v0
.end method

.method private final g()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object p3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    const p3, 0x7f040163

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i:Landroid/view/View;

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->i:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public final a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 82
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(I)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 280
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MiniPlayer"

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MiniPlayer onSavedInstanceSate()"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Landroid/support/v7/app/AppCompatActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->f:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d(I)V

    .line 101
    iget v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->p:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(I)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 102
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Landroid/view/View$OnClickListener;)V

    .line 103
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 99
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a(Landroid/view/View$OnClickListener;)V

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 105
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    .line 109
    new-instance v0, Lcom/samsung/android/app/music/ActivePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/ActivePlayerController;-><init>()V

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->g()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/ActivePlayerController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 109
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->l:Lcom/samsung/android/app/music/ActivePlayerController;

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->l:Lcom/samsung/android/app/music/ActivePlayerController;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    const-string v2, "MiniPlayer"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->l:Lcom/samsung/android/app/music/ActivePlayerController;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->m:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 114
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;)V

    .line 117
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    .line 116
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->n:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .line 119
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    .line 122
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->r:Landroid/support/v7/app/AppCompatActivity;

    const v3, 0x7f130567

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 122
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 125
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 140
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 197
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->n:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setEnabled(Z)V

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->o:Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniQueueButtonController;->a(Z)V

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a(Z)V

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Z)V

    :cond_3
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 152
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 295
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MiniPlayer"

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onRestoreInstanceState()"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/MediaDataUtils;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->d()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer$Companion;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->e()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->release()V

    return-void
.end method
