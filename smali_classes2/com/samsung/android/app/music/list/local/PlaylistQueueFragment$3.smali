.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Landroid/content/Context;

    move-result-object p1

    .line 364
    invoke-static {}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    .line 365
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    .line 366
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4351"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
