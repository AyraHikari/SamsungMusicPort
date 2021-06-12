.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 341
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    const p2, 0x7f130031

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->e(I)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
