.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "_favorites[ARTIST]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "_favorites[TRACK]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/MutableLiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModelKt;->a(Ljava/util/List;)Z

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/arch/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/MediatorLiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/arch/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MediatorLiveData;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
