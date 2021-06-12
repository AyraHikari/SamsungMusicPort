.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LandscapeLayoutBuilder"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private b:Z

.field private final c:Lkotlin/Lazy;

.field private d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final g:Landroid/app/Activity;

.field private final h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isLandscapeMode"

    const-string v4, "isLandscapeMode()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "settingManager"

    const-string v4, "getSettingManager()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->g:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->h:Landroid/view/View;

    .line 59
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$isLandscapeMode$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->c:Lkotlin/Lazy;

    .line 65
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$settingManager$2;->INSTANCE:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$settingManager$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->e:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Landroid/app/Activity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->g:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;ZZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a(ZZ)V

    return-void
.end method

.method private final a(ZZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 104
    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->d:Z

    if-ne p2, p1, :cond_1

    return-void

    .line 107
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->d:Z

    .line 108
    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    .line 341
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Landscape controller\'s wide margin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_3

    const p1, 0x7f1005bb

    goto :goto_2

    :cond_3
    const p1, 0x7f100238

    .line 111
    :goto_2
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 119
    sget-object p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->h:Landroid/view/View;

    const v2, 0x7f130413

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView.findViewById(R.id.mini_player_control)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    :try_start_0
    instance-of v2, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v2, :cond_4

    .line 357
    new-instance v2, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v2}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 358
    move-object v3, v1

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v3, 0x7f130059

    .line 120
    invoke-virtual {v2, v3, v0, p1}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    const v3, 0x7f130056

    .line 121
    invoke-virtual {v2, v3, v0, p1}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    const v3, 0x7f130050

    .line 122
    invoke-virtual {v2, v3, v0, p1}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    const v3, 0x7f130414

    .line 123
    invoke-virtual {v2, v3, v0, p1}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    .line 360
    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_3

    .line 364
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints not applied to view : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constraints failed due to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final a()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->h:Landroid/view/View;

    return-object p0
.end method

.method private final b()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-object v0
.end method

.method private final c()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b:Z

    return p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b:Z

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a(ZZ)V

    return-void
.end method

.method public onStartCalled()V
    .locals 4

    .line 81
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b:Z

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a(ZZ)V

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 3

    .line 90
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->f:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
