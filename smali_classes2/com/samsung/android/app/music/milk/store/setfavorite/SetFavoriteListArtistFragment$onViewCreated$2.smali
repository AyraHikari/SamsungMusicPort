.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/samsung/android/app/music/milk/store/base/Event<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

.field final synthetic b:Landroid/support/design/widget/AppBarLayout;

.field final synthetic c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;Landroid/support/design/widget/AppBarLayout;Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->b:Landroid/support/design/widget/AppBarLayout;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/store/base/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/base/Event<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/base/Event;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->b:Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->c:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/samsung/android/app/music/milk/store/base/Event;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$onViewCreated$2;->a(Lcom/samsung/android/app/music/milk/store/base/Event;)V

    return-void
.end method
