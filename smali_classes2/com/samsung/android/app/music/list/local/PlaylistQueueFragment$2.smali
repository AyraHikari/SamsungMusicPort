.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
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

    .line 280
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)V
    .locals 6

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getUserVisibleHint()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-RadioQueue"

    const-string p2, "list menu clicked but activity is null"

    .line 288
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    .line 292
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    instance-of p2, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz p2, :cond_2

    .line 295
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v1, 0x20000050

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 296
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    const-string p1, "SMUSIC-RadioQueue"

    const-string p2, "list menu clicked but activity is not NavigationManager"

    .line 299
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
