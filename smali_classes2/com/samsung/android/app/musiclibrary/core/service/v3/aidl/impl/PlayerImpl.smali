.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;


# instance fields
.field private final iPlayer$delegate:Lkotlin/Lazy;

.field private final og$delegate:Lkotlin/Lazy;

.field private final playControlImpl$delegate:Lkotlin/Lazy;

.field private final playQueueImpl$delegate:Lkotlin/Lazy;

.field private final playerParcel:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "iPlayer"

    const-string v4, "getIPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playControlImpl"

    const-string v4, "getPlayControlImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playQueueImpl"

    const-string v4, "getPlayQueueImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "og"

    const-string v4, "getOg()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V
    .locals 1

    const-string v0, "playerParcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playerParcel:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 30
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$iPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->iPlayer$delegate:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playControlImpl$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playControlImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playControlImpl$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playQueueImpl$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$og$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$og$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->og$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getIPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayerParcel$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playerParcel:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    return-object p0
.end method

.method private final getIPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->iPlayer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    return-object v0
.end method

.method private final getOg()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->og$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    return-object v0
.end method

.method private final getPlayControlImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playControlImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;

    return-object v0
.end method

.method private final getPlayQueueImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playQueueImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;

    return-object v0
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 2

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    const-string v1, "iPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getPlayControlImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    return-object v0
.end method

.method public getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getPlayQueueImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 2

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    const-string v1, "iPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playerParcel:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getOg()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public sendCustom(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->sendCustomWithBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->sendCustom(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final testCallbackCount()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getOg()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->count()I

    move-result v0

    return v0
.end method

.method public final testGetBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->playerParcel:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getPlayer()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getOg()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method
