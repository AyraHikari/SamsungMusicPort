.class public Lcom/samsung/android/app/music/settings/DeviceManagementActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/help/MuseHelper$MuseLoginRequestReceivable;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->f:I

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;-><init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 289
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 291
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 292
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 293
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b00fe

    .line 294
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)V
    .locals 2

    .line 254
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserSettingTransport;

    move-result-object v0

    const/4 v1, 0x1

    .line 255
    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport;->a(ILcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 256
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;-><init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    .line 257
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)V

    return-void
.end method

.method private b()V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "DeviceManagementActivity"

    const-string v1, "setData - device list is null"

    .line 123
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "DeviceManagementActivity"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData - registered device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DeviceManagementActivity"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData - remain reset count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f0b02c1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f0b0465

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0b04ad

    .line 144
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 143
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 180
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterLimitedDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterLimitedDialog;-><init>()V

    .line 181
    new-instance v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;-><init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterLimitedDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "DeviceManagementActivity"

    .line 197
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 198
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 224
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserSettingTransport;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/UserSettingTransport;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    .line 225
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;-><init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    .line 226
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterDialog;-><init>()V

    .line 153
    new-instance v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;-><init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "DeviceManagementActivity"

    .line 172
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 173
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 217
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 209
    sget-object p1, Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;->CONTACT_US:Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/help/MuseHelper;->a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/help/MuseHelper$MuseUriType;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04011d

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->setContentView(I)V

    .line 92
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Landroid/app/Activity;)V

    const v0, 0x7f130377

    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f13037a

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f130373

    .line 97
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a:Landroid/view/ViewGroup;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a:Landroid/view/ViewGroup;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/16 v1, 0xf

    const v2, 0x7f0f003a

    .line 100
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_0
    const v0, 0x7f13037d

    .line 103
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0465

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0b04ad

    .line 105
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f13037e

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "426"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d()V

    return-void
.end method
