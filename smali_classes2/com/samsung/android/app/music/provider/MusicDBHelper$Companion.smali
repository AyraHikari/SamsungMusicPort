.class public final Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1346
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a()Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1358
    const-class v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1359
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a()Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1360
    new-instance v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/provider/MusicDBHelper;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Lcom/samsung/android/app/music/provider/MusicDBHelper;)V

    .line 1362
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 1364
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a()Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 1356
    monitor-exit p0

    throw p1
.end method
