.class public final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 3

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    monitor-enter v0

    .line 327
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$setSInstance$cp(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V

    .line 328
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 330
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    return-object p1
.end method

.method public final getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 2

    .line 335
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please check createInstance(context) is called before."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
