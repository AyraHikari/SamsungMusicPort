.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;
    .locals 2

    .line 29
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
