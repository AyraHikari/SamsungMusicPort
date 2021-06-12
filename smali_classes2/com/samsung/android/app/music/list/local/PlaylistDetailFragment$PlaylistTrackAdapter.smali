.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistTrackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
        "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

.field private j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lcom/samsung/android/app/music/network/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 863
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->l:F

    const/4 p1, -0x1

    .line 866
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->o:I

    .line 873
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_2

    .line 874
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->r:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 875
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->r:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    .line 876
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    goto :goto_0

    .line 874
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.network.NetworkManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private final b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V
    .locals 0

    .line 1032
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->a()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private final j(I)Z
    .locals 2

    .line 1019
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->o:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_2

    const/16 p3, -0x4c5

    if-eq p2, p3, :cond_1

    const/16 p3, 0x7d1

    if-eq p2, p3, :cond_0

    const p3, 0x7f0400e2

    goto :goto_0

    :cond_0
    const p3, 0x7f0400e7

    goto :goto_0

    :cond_1
    const p3, 0x7f0400e4

    .line 890
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 895
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public final a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    .line 863
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->l:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 864
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->m:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V
    .locals 8

    .line 915
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    .line 917
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, -0x4c5

    const v3, 0x3ebd70a4    # 0.37f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x0

    if-eq v1, v6, :cond_b

    const/16 v7, 0x7d1

    if-eq v1, v7, :cond_0

    goto/16 :goto_5

    .line 950
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 951
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->b(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    if-eqz p1, :cond_a

    .line 955
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isActionModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 957
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 958
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 959
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 961
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->a()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v0, :cond_21

    .line 964
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "audio_id"

    .line 1554
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 965
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->g:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d()Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_9

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f0202d0

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    .line 971
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->a()Landroid/widget/ImageView;

    move-result-object p1

    .line 972
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 973
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 976
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->a()Landroid/widget/ImageView;

    move-result-object p2

    .line 977
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->l:F

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 978
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->l:F

    cmpg-float v0, v0, v4

    if-nez v0, :cond_8

    const/4 v5, 0x1

    :cond_8
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    const p2, 0x7f0202d6

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    goto/16 :goto_5

    .line 965
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void

    .line 919
    :cond_b
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->n:I

    if-gtz v0, :cond_d

    if-eqz p1, :cond_c

    .line 920
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->n:I

    .line 923
    :cond_d
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->c(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    if-eqz v0, :cond_f

    .line 924
    :cond_e
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->d(I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const/4 v0, 0x1

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_11

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_11
    if-eqz p1, :cond_1b

    .line 927
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-nez v0, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_12
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 928
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v0, :cond_13

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 929
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->textView2:Landroid/widget/TextView;

    if-nez v0, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_14
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 930
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->e()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_15
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 932
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "_id"

    .line 1553
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_16
    move-object v0, v2

    .line 934
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->c()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_17
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->g:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    const/16 v4, 0x8

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_18

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v6, :cond_18

    const/4 v0, 0x0

    goto :goto_4

    :cond_18
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 936
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isActionModeEnabled()Z

    move-result v0

    .line 938
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getListItemMenuable()Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object v1

    if-eqz v1, :cond_21

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, p2, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;->b(Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 939
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->d(I)Z

    move-result v1

    if-eqz v1, :cond_21

    if-nez v0, :cond_21

    .line 941
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->more:Landroid/view/View;

    if-nez p1, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_19
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    if-nez v0, :cond_1a

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->j(I)Z

    move-result p2

    if-nez p2, :cond_1a

    const/4 v4, 0x0

    :cond_1a
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_1b
    return-void

    :cond_1c
    if-eqz p1, :cond_22

    .line 986
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isActionModeEnabled()Z

    move-result p2

    if-nez p2, :cond_1d

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    if-eqz p2, :cond_1d

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    if-nez p2, :cond_1d

    const/4 v5, 0x1

    :cond_1d
    if-eqz v5, :cond_1e

    const/high16 v3, 0x3f800000    # 1.0f

    .line 988
    :cond_1e
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->itemView:Landroid/view/View;

    if-nez p2, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1f
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 989
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;->b()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 990
    :cond_20
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_21
    :goto_5
    return-void

    :cond_22
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->g:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V
    .locals 0

    .line 858
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 858
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    return-void
.end method

.method public final b()Landroid/view/View$OnClickListener;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final b(I)Z
    .locals 0

    .line 1007
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    .line 864
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->m:I

    return v0
.end method

.method public final c(I)Z
    .locals 1

    .line 1011
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result p1

    const v0, 0x80008

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()I
    .locals 1

    .line 865
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->n:I

    return v0
.end method

.method public final d(I)Z
    .locals 0

    .line 1015
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p1

    return p1
.end method

.method public e(I)J
    .locals 2

    .line 1024
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->e(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final e()V
    .locals 3

    .line 997
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->r:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 998
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v1

    .line 999
    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    if-eq v2, v1, :cond_2

    .line 1000
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->p:Z

    .line 1001
    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->q:Z

    .line 1002
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final f(I)I
    .locals 1

    .line 1028
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "play_order"

    .line 1555
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getItemId(I)J
    .locals 4

    .line 909
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 910
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v2, 0x7d1

    if-ne p1, v2, :cond_0

    neg-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 899
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 900
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide v2, 0xfffffed8L

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/16 p1, 0x7d1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/16 p1, -0x4c5

    goto :goto_0

    .line 904
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    const-string v0, "is_celeb"

    .line 1048
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->o:I

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 858
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 858
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 858
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
