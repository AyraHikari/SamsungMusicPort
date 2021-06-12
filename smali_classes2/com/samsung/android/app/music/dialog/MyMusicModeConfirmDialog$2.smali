.class Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;->c:Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;->b:Landroid/app/Activity;

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "my_music_mode_show_confirm_on"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/settings/MilkSettings;->c(Z)V

    return-void
.end method
