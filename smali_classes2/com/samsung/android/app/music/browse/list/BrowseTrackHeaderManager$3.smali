.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;I)I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    .line 186
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;Z)V

    return-void
.end method
