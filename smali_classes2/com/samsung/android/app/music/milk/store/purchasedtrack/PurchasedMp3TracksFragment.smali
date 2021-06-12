.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedMp3TracksFragment;
.super Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "PurchasedTracksFragment_MP3"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected i()I
    .locals 1

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedMp3TracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 20
    move-object p2, p1

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 22
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x3e9

    aput v2, v0, v1

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 21
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 26
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 28
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f020220

    invoke-direct {v1, v4, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 25
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedMp3TracksFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method
