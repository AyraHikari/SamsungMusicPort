.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory; = null

.field private static final THREAD_NAME_SMC:Ljava/lang/String; = "smusic_smc"


# instance fields
.field private final looper:Landroid/os/Looper;

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smusic_smc"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->thread:Landroid/os/HandlerThread;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "thread.looper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->looper:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;)V
    .locals 0

    .line 6
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    return-void
.end method

.method public static final getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 17
    monitor-enter p0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    .line 19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    throw v0
.end method
