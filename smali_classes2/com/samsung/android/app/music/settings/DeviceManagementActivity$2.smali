.class Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 158
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;

    .line 159
    new-instance v1, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/model/milksetting/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 164
    new-instance p2, Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;-><init>(Ljava/util/ArrayList;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$2;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)V

    :cond_1
    return-void
.end method
