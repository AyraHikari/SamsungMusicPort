.class Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c()V
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

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DeviceManagementActivity"

    const-string p2, "Samsung Members supported"

    .line 185
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_0
    const-string p1, "DeviceManagementActivity"

    const-string p2, "Samsung Members not supported"

    .line 188
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$3;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    const/4 p2, 0x2

    .line 190
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/help/MuseUtils;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
