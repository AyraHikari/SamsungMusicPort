.class Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleConnectListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/library/beaconmanager/Tv;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mTvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->mActivity:Landroid/app/Activity;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->mTvList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getTvName(I)Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->mTvList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/library/beaconmanager/Tv;

    if-nez p1, :cond_0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tv doesn\'t exist"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_ble_select_tv_list_item_common:I

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_0
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->text1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog$BleConnectListAdapter;->getTvName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
