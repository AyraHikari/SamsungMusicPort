.class final Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$AddWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$DeleteWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$IsFavoriteWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$Companion;

.field public static final KEY_AUDIO_IDS:I = 0x0

.field public static final KEY_LISTENER:I = 0x1

.field public static final KEY_RESULT:I = 0x2


# instance fields
.field private addHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private deleteHandler:Landroid/os/Handler;

.field private isFavoriteHandler:Landroid/os/Handler;

.field private final tracksManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracksManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->tracksManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 208
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;

    invoke-direct {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;-><init>()V

    :goto_0
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    invoke-direct {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;)V

    return-void
.end method

.method public static final synthetic access$getAddHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;)Landroid/os/Handler;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getDeleteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;)Landroid/os/Handler;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$isFavoriteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;)Landroid/os/Handler;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setAddHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Landroid/os/Handler;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setDeleteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Landroid/os/Handler;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setFavoriteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Landroid/os/Handler;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final add([J)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 216
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "add, Track - ids is empty"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 217
    invoke-static {p1, v0, v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v2
.end method

.method public final addAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 226
    array-length v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 231
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$AddWorkerHandler;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$AddWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addHandler:Landroid/os/Handler;

    .line 233
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-static {p1, v2, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p1, "addAsync, Track - ids is empty"

    const/4 p2, 0x6

    const/4 v1, 0x0

    .line 227
    invoke-static {p1, v0, v0, p2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->tracksManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;->addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p1

    return-object p1
.end method

.method public final delete([J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 242
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object p1

    :cond_2
    :goto_1
    const-string p1, "delete, Track - ids is empty"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 243
    invoke-static {p1, v0, v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-object v2
.end method

.method public final deleteAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 252
    array-length v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 257
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$DeleteWorkerHandler;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$DeleteWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteHandler:Landroid/os/Handler;

    .line 259
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-static {p1, v2, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p1, "deleteAsync, Track - ids is empty"

    const/4 p2, 0x6

    const/4 v1, 0x0

    .line 253
    invoke-static {p1, v0, v0, p2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->tracksManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;->deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p1

    return-object p1
.end method

.method public final isFavorite(J)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid audioId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteInternal(Landroid/content/Context;J)Z

    move-result p1

    return p1
.end method

.method public final isFavoriteAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$IsFavoriteWorkerHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$IsFavoriteWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteHandler:Landroid/os/Handler;

    .line 279
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {p2, p1, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public isFavoriteInternal(Landroid/content/Context;J)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->tracksManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;->isFavoriteInternal(Landroid/content/Context;J)Z

    move-result p1

    return p1
.end method
