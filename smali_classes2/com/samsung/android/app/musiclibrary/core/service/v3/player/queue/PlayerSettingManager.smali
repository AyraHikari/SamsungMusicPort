.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private isTest:Z

.field private final playerPreference$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerPreference"

    const-string v4, "getPlayerPreference()Landroid/content/SharedPreferences;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->context:Landroid/content/Context;

    .line 11
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$playerPreference$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->playerPreference$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    return-object v0
.end method

.method public static final synthetic access$isTest$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->isTest:Z

    return p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    return-void
.end method

.method public static final synthetic access$setTest$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->isTest:Z

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object p0

    return-object p0
.end method

.method private final getPlayerPreference()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->playerPreference$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final getActivePlayerType()I
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "queue_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getQueue()Ljava/lang/String;
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "queue"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerPreference.getStri\u2026ey.PlayerQueue.QUEUE, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getQueuePosition()I
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "queue_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final setActivePlayerType(I)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue_type"

    .line 25
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setQueue(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue"

    .line 38
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "queue_position"

    .line 39
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setQueuePosition(I)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->getPlayerPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queue_position"

    .line 50
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final testMode()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->isTest:Z

    return-void
.end method
