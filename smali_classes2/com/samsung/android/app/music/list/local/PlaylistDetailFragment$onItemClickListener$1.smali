.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 8

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->c(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 219
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x38

    const/4 v7, 0x0

    move v1, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    .line 225
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->e(I)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_3

    .line 227
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast p3, Landroid/content/Context;

    iget-object p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {p4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p1, p2}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_3
    return-void
.end method
