.class public final Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$AppUpdateDialogLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppUpdateDialogLauncher"
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;Z)Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
    .locals 4

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b008c

    .line 105
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b008a

    .line 107
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "3"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "forceUpdate"

    .line 109
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
