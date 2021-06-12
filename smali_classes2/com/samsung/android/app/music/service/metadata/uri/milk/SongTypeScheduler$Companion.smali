.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SV-RadioQueue"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduler> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler$Companion;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SV-RadioQueue"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduler> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l()Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    .line 229
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->l()Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->b(Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
