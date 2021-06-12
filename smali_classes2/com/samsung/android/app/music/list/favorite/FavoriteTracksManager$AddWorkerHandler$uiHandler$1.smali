.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$AddWorkerHandler$uiHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$AddWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/HashMap;

    .line 295
    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    const/4 v1, 0x2

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/AddResult;

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/favorite/AddResultListener;->onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V

    :cond_1
    return-void

    .line 296
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.list.favorite.AddResult"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.HashMap<*, *> /* = java.util.HashMap<*, *> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
