.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    const p2, 0x7f130031

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->e(I)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
