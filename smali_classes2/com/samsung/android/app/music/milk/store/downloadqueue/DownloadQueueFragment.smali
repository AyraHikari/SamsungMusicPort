.class public final Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

.field private d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

.field private e:Lcom/samsung/android/app/music/network/NetworkManager;

.field private f:Lcom/samsung/android/app/music/view/NoNetworkViewController;

.field private g:Z

.field private final h:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

.field private final i:Landroid/content/ServiceConnection;

.field private final j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 223
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->h:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    .line 302
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->i:Landroid/content/ServiceConnection;

    .line 322
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    return-object p1
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 335
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b032f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b044d

    .line 336
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V

    const v2, 0x7f0b01be

    .line 337
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00cd

    .line 345
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->c(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "device_overflow"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private b(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 350
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02aa

    .line 351
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "811"

    .line 352
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "8011"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$6;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    const v3, 0x7f0b01be

    .line 353
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "download_fail"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->h:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Landroid/content/ServiceConnection;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->i:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 180
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f140016

    .line 181
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040074

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Ui"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueFragment | onDestroy() - isCompleteDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDownloadQueueController: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->g:Z

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a()V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->h:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Ui"

    const-string v0, "DownloadQueue_DownloadQueueFragment | onPrepareOptionsMenu() - null menuItem."

    .line 203
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v0, :cond_1

    const-string v0, "Ui"

    const-string v1, "DownloadQueue_DownloadQueueFragment | onOptionsItemSelected() - Do nothing due to lost connection."

    .line 208
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 211
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 216
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->c(I)V

    return v1

    .line 213
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305c6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .line 186
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getItemCount()I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a()Z

    move-result v1

    const-string v2, "Ui"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadQueueFragment | onPrepareOptionsMenu() - itemCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPausedAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f1305c7

    .line 196
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f1305c6

    .line 197
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-lez v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    :goto_2
    const-string p1, "Ui"

    const-string v0, "DownloadQueue_DownloadQueueFragment | onPrepareOptionsMenu() - null adapter or menu."

    .line 188
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 147
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v1

    const-string v2, "download_queue"

    .line 151
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->f:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->f:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 159
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 83
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueFragment | onViewCreated() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "DownloadQueue_DownloadQueueFragment | "

    const-string p2, "onViewCreated() - null activity."

    .line 87
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v2, 0x7f0b01d9

    .line 94
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f130229

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f130150

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setHasFixedSize(Z)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 109
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->e:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    const p1, 0x7f100258

    .line 126
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->f:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 129
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 131
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->i:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
