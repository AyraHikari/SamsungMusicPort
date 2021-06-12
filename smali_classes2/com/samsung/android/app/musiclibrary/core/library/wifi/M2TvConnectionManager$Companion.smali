.class public final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final requestConnection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tvName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "M2TvManager"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnection() tvName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.m2tv.TV_NAME"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tv_name"

    .line 316
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
