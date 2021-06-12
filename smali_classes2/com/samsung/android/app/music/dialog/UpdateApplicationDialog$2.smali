.class Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$2;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$2;->a:Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "show_update_popup"

    xor-int/lit8 p2, p2, 0x1

    .line 133
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
