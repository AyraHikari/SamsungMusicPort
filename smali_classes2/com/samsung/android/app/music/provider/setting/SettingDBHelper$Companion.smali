.class public final Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a()Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a(Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;->a()Lcom/samsung/android/app/music/provider/setting/SettingDBHelper;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 184
    monitor-exit p0

    throw p1
.end method
