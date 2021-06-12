.class public final Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/StoreDataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/StoreDataSender;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a()Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->a()Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/milk/StoreDataSender;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/StoreDataSender;->b(Lcom/samsung/android/app/music/service/milk/StoreDataSender;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
