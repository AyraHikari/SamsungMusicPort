.class Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

.field final synthetic b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;Lcom/samsung/android/app/music/browse/data/BrowseContentData;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->d(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    .line 239
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->c(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    .line 240
    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 239
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "play_event_videoclip"

    const-string v1, "play_event_videoclip"

    const-string v2, "1"

    .line 242
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->a:Lcom/samsung/android/app/music/browse/data/BrowseContentData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/data/BrowseContentData;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->create(Ljava/lang/String;I)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder$4;->b:Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    .line 249
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->e(Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;->create(Ljava/util/List;)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;)V

    return-void
.end method
