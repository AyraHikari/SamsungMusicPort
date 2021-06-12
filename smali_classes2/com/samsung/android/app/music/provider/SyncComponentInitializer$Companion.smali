.class public final Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/SyncComponentInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/SyncComponentInitializer;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->a()Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->a()Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/SyncComponentInitializer;->a(Lcom/samsung/android/app/music/provider/SyncComponentInitializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
