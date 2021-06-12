.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaylistReorderableImpl"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->b(I)Ljava/lang/Integer;

    move-result-object p1

    .line 906
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->b(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 910
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 911
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 912
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 909
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Landroid/content/Context;II)Z

    return-void

    .line 915
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromOrder["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] and toOrder["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] are invalid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
