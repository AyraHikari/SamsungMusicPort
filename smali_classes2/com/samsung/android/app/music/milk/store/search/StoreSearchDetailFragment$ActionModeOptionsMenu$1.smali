.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a([J)V
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 722
    array-length v1, p1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->K()V

    .line 725
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_playlist_id"

    const-string v3, "SEARCH"

    .line 726
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->b(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    const-string v0, "StoreSearchDetailFragment"

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to play list track counts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 718
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu$1;->a([J)V

    return-void
.end method
