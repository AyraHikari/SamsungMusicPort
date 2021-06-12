.class Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewCover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeAlertReceiver() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "type"

    .line 213
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "volume"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "visibility"

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "remote"

    .line 218
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->b(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 224
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Z)V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 228
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->c(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$2;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->d(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Z)V

    .line 234
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewCover-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVolumeAlertReceiver() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - visibility: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rv: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
