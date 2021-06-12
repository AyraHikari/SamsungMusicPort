.class public Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/support/v7/app/AlertDialog;

.field private g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private final l:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 78
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f020215
        0x7f020218
        0x7f02021b
        0x7f020214
        0x7f02021c
        0x7f02021a
        0x7f020216
        0x7f020219
        0x7f020217
        0x7f02021d
        0x7f020213
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$2;-><init>(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->l:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->selectDevice(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;ILjava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 254
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->getSelectedDeviceId()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0400dc

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a:[I

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ChangeDevice"

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog       | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    return-object p0
.end method

.method private e()Z
    .locals 6

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    .line 295
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 296
    :goto_0
    iget v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->j:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 297
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isConnectedDevice() isWfdConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isDmrPlaying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/widget/ListView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->k:Z

    return p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "saved_instance_state_device_list"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    .line 113
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->l:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->setChangeDeviceListener(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onCreateCalled(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 137
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->k:Z

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f040065

    .line 146
    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x102000a

    .line 147
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    .line 148
    iget-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->d:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v3, 0x7f1301f7

    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->c:Landroid/widget/TextView;

    const v4, 0x7f0b00dd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    .line 152
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Z)V

    const v3, 0x7f04006c

    .line 154
    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f130216

    .line 155
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    .line 156
    iget-object v3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->e:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00cd

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$1;-><init>(Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;)V

    const v1, 0x7f0b028f

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onDestroyCalled()V

    .line 208
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick() position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " id: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    if-nez p1, :cond_0

    const-string p1, "onItemClick() no information."

    .line 240
    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    iget p2, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(ILjava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->f:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->updateMetadata(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onPauseCalled()V

    .line 189
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->j:I

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->j:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->updatePlaybackState(I)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onResumeCalled()V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "saved_instance_state_device_list"

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->g:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->h:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->onStopCalled()V

    .line 199
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    return-void
.end method
