.class public final Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/LocalSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 27
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/main/LocalSyncTask;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/main/LocalSyncTask;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LocalSyncTask"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaylistSyncDown called. syncType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
