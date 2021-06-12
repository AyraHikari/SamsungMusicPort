.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;->access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayerSettingManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
