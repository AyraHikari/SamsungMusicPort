.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteViewModel;->c()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->d:Landroid/view/View;

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteActivity$onCreate$$inlined$forEach$lambda$1;->d:Landroid/view/View;

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
