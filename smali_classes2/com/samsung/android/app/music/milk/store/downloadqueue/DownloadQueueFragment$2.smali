.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
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

    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "Ui"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueFragment | onDownloadResult() - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b00ea

    .line 287
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0b0119

    .line 274
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    :pswitch_4
    const p1, 0x7f0b0395

    .line 269
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IJ)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(IJ)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Ljava/util/List;)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 234
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0d0010

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 235
    invoke-virtual {p1, v3, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    if-nez v1, :cond_1

    const-string p1, "Ui"

    const-string v1, "DownloadQueue_DownloadQueueFragment | onDownloadQueueChanged() - Finish activity."

    .line 240
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Z)Z

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
