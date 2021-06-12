.class Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;Landroid/app/Activity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;->b:Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string p2, "mobile_data"

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "801"

    const-string v0, "8002"

    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;->a:Landroid/app/Activity;

    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    return-void
.end method
