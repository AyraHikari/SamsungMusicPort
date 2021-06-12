.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$Companion;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/samsung/android/app/music/milk/store/base/Event<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseIntArray;

.field private final g:Landroid/arch/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    .line 27
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c:Landroid/util/SparseArray;

    .line 29
    new-instance p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e:Landroid/util/SparseArray;

    .line 35
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f:Landroid/util/SparseIntArray;

    .line 37
    new-instance p1, Landroid/arch/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroid/arch/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f:Landroid/util/SparseIntArray;

    const/4 v0, 0x5

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    .line 55
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast v1, Landroid/arch/lifecycle/Observer;

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    .line 69
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast v1, Landroid/arch/lifecycle/Observer;

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$3;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast v1, Landroid/arch/lifecycle/Observer;

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/MediatorLiveData;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/util/SparseArray;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private final a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    .line 263
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    .line 152
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/arch/lifecycle/MediatorLiveData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    return-object p0
.end method


# virtual methods
.method public final a(I)Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "_favorites[type]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/LiveData;

    return-object p1
.end method

.method public final a(IZ)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "_scrollToBottomEvent[type]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/MutableLiveData;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/base/Event;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/milk/store/base/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/lang/String;I)Z
    .locals 8

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/MutableLiveData;

    const-string v1, "liveData"

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "liveData.value ?: return false"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 184
    check-cast v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 186
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .line 267
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 187
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 190
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 196
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->g()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c(I)I

    move-result p1

    if-ne v5, p1, :cond_3

    const-string p1, "Ui"

    const-string p2, "SetFavorite_SetFavoriteViewModel | setLike() - Exceed maximum like count."

    .line 197
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v3, p3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->a(I)V

    const-string p1, "Ui"

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SetFavorite_SetFavoriteViewModel | setLike() - targetFav: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_4
    return v2

    :cond_5
    return v2
.end method

.method public final a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;)Z
    .locals 6

    const-string v0, "newFav"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "_currentType.value ?: return false"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/MutableLiveData;

    const-string v2, "liveData"

    .line 161
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    const-string v3, "liveData.value ?: return false"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 265
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "Ui"

    const-string v0, "SetFavorite_SetFavoriteViewModel | add() - Exist same fav."

    .line 165
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 170
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Ui"

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetFavorite_SetFavoriteViewModel | add() - newFav: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public final b(I)Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/samsung/android/app/music/milk/store/base/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "_scrollToBottomEvent[type]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/LiveData;

    return-object p1
.end method

.method public final c(I)I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public final c()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method public final d()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->g:Landroid/arch/lifecycle/MediatorLiveData;

    check-cast v0, Landroid/arch/lifecycle/LiveData;

    return-object v0
.end method

.method public final d(I)Z
    .locals 7

    const-string v0, "Ui"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_SetFavoriteViewModel | load() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApplication<Application>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 137
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "_favorites[ARTIST]"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 138
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v5, "artists"

    .line 139
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModelKt;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/app/Application;)V

    check-cast v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;

    invoke-static {v1, p1, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->b(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "_favorites[GENRE]"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 128
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "genres"

    .line 129
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModelKt;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz v4, :cond_1

    .line 130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/app/Application;)V

    check-cast v3, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;

    invoke-static {v1, p1, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->a(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    goto :goto_0

    .line 126
    :pswitch_2
    check-cast v0, Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$1;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;)V

    :cond_2
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d(I)Z

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;>;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    .line 259
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 260
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/arch/lifecycle/MutableLiveData;

    .line 107
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final g()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v1, "_currentType.value ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const-string v2, "Ui"

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetFavorite_SetFavoriteViewModel | prev() - prevPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "_currentType.value ?: return false"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 231
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const-string v2, "Ui"

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetFavorite_SetFavoriteViewModel | next() - nextPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d(I)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final i()V
    .locals 6

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b:Landroid/util/SparseArray;

    .line 269
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 270
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/arch/lifecycle/MutableLiveData;

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-static {v5, v3, v4}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader;->a(Landroid/content/Context;ILjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
