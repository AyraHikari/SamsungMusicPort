.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteLoader$LoaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->d(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

.field final synthetic b:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    const-string v0, "artists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel$load$$inlined$let$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_favorites[ARTIST]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->a(Ljava/lang/Object;)V

    return-void
.end method
