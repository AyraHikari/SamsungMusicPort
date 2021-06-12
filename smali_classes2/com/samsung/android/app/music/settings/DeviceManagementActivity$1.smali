.class Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/settings/DeviceManagementActivity;
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

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DeviceManagementActivity"

    const-string v0, "Can not connect to network"

    .line 71
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$1;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    const v1, 0x7f0b02c1

    .line 79
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 78
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "426"

    const-string v1, "5291"

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
