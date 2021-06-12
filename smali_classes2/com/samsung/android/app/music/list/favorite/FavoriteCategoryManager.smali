.class final Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$AddWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$DeleteWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$IsFavoriteWorkerHandler;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$Companion;

.field public static final KEY_CATEGORY:I = 0x0

.field public static final KEY_LISTENER:I = 0x1

.field public static final KEY_RESULT:I = 0x2


# instance fields
.field private addHandler:Landroid/os/Handler;

.field private final categoryManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

.field private final context:Landroid/content/Context;

.field private deleteHandler:Landroid/os/Handler;

.field private isFavoriteHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 885
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;

    invoke-direct {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$MilkImpl;-><init>()V

    :goto_0
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;

    invoke-direct {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$LocalImpl;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;)V

    return-void
.end method

.method public static final synthetic access$getAddHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;)Landroid/os/Handler;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getDeleteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;)Landroid/os/Handler;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$isFavoriteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;)Landroid/os/Handler;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setAddHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Landroid/os/Handler;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setDeleteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Landroid/os/Handler;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setFavoriteHandler$p(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Landroid/os/Handler;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic addAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 896
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method

.method public static synthetic deleteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 912
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method public static synthetic isFavoriteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 928
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p1

    return-object p1
.end method

.method public final addAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V
    .locals 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$AddWorkerHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$AddWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addHandler:Landroid/os/Handler;

    .line 900
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 901
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {p2, p1, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;->addInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p1

    return-object p1
.end method

.method public final deleteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V
    .locals 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$DeleteWorkerHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$DeleteWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteHandler:Landroid/os/Handler;

    .line 916
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 917
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 918
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {p2, p1, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;->deleteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p1

    return-object p1
.end method

.method public final isFavorite(Lcom/samsung/android/app/music/list/favorite/Category;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result p1

    return p1
.end method

.method public final isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V
    .locals 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$IsFavoriteWorkerHandler;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->context:Landroid/content/Context;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager$IsFavoriteWorkerHandler;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;Ljava/lang/ref/WeakReference;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteHandler:Landroid/os/Handler;

    .line 932
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 933
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 934
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    invoke-static {p2, p1, v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    :cond_2
    return-void
.end method

.method public isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;->isFavoriteInternal(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/Category;)Z

    move-result p1

    return p1
.end method
