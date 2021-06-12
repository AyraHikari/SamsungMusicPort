.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->m()V
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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "UiList"

    const-string v0, "Fragment not attached"

    .line 186
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c(Z)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->g()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->a(Z)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v0

    const-string v2, "b"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a(Z)V

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->e()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;->a(I)V

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->c()Ljava/lang/String;

    move-result-object p1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request_page ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".request_page], bMore ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;->b(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$PurchasedTrackLoadMoreHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".bMore]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedDrmTracksFragment$getPurchasedDrmTracks$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
