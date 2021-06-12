.class Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string p2, "data_check_help"

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 233
    invoke-static {}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataCheckDialog() : mPrefKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v3}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "data_check_help_nearby_item"

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 240
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Z)Z

    .line 241
    invoke-static {}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DataCheckDialog()"

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x10000b

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->c(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->d(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v2, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p2, "data_check_help_dlna"

    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 248
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b(Z)Z

    .line 249
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a(Landroid/support/v4/app/FragmentActivity;Z)V

    .line 251
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->dismiss()V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;->a:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->a(I)V

    :cond_2
    return-void
.end method
