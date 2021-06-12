.class Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;
.super Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->j()Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->d()V

    :cond_0
    return-void
.end method
