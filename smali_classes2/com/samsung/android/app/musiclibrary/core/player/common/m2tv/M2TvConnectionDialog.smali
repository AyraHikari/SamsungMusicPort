.class public Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "M2TvConnectionDialog"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getNewInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "args_tv_list"

    .line 44
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->getNewInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;

    move-result-object p1

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "args_tv_list"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->mContext:Landroid/content/Context;

    .line 57
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_ble_select_tv:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 61
    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_common:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x102000a

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 65
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_list_item_common:I

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;-><init>(Landroid/app/Activity;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->getTvName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 83
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->TAG:Ljava/lang/String;

    const-string p2, "TV name doesn\'t exist."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->dismiss()V

    return-void

    .line 87
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->requestConnection(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->dismiss()V

    return-void
.end method
