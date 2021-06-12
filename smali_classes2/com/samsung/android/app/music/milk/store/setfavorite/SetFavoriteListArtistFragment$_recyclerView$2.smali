.class final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;->this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;->this$0:Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v1, 0x7f130150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteListArtistFragment$_recyclerView$2;->invoke()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    return-object v0
.end method
