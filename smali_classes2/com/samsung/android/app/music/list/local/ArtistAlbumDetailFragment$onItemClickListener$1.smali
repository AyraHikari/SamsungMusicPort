.class final Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 9

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "parentFragment!!"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-wide v3, p3

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 65
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
