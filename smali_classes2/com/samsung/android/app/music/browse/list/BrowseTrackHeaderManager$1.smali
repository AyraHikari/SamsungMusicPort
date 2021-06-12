.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


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

    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f13017d

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const v3, 0x7f13017c

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 151
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 154
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
