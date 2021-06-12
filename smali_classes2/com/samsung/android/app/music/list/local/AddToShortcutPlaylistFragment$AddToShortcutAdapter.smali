.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToShortcutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 175
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

    .line 218
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "fragment.activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/app/Activity;

    const v0, 0x7f0400d6

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 220
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    const/16 v2, -0x7d1

    if-ne v1, v2, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 232
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0xb

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0xc

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0xe

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v3, -0xd

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 234
    :goto_0
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    :cond_6
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 241
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "-14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0xa

    goto :goto_1

    :pswitch_1
    const-string v1, "-13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0xb

    goto :goto_1

    :pswitch_2
    const-string v1, "-12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0xc

    goto :goto_1

    :pswitch_3
    const-string v1, "-11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x9

    goto :goto_1

    .line 247
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result p1

    goto :goto_1

    .line 249
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result p1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0xaf0d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 173
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->a(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 173
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->a(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
