.class public final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToPlaylistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

.field private b:Z

.field private c:Lcom/samsung/android/app/music/network/NetworkManager;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 243
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    .line 299
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 300
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->d:Z

    .line 301
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 302
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->b:Z

    goto :goto_0

    .line 301
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.network.NetworkManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;)Landroid/content/Context;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, -0x3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 326
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0400d6

    .line 327
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 322
    :cond_1
    :pswitch_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0400d7

    .line 323
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 330
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 349
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->b:Z

    if-eq v1, v0, :cond_1

    .line 350
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->b:Z

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 336
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    :goto_0
    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 240
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 240
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 240
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->b(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
