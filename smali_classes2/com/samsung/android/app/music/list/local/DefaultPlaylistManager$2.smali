.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$2;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$2;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
