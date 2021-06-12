.class public final Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "LegacySoundAliveDialogFragment"


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/support/v7/app/AlertDialog;

.field private d:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

.field private e:I

.field private f:I

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->e:I

    .line 47
    iput v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->e:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->e:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->d:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->c:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    return p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 128
    iget p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "music_service_pref"

    const/4 v3, 0x4

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b:Landroid/content/SharedPreferences;

    .line 56
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 58
    new-instance v2, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    .line 59
    invoke-static {v1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0401ea

    invoke-direct {v2, v0, v3, v1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->d:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    if-eqz p1, :cond_0

    const-string v1, "saved_instance_state_position"

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b:Landroid/content/SharedPreferences;

    const-string v1, "sound_alive"

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    .line 64
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 66
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    .line 68
    :goto_0
    iget p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->e:I

    .line 70
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->setStyle(II)V

    .line 79
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b04e9

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->d:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    iget v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    new-instance v2, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$3;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    const v1, 0x7f0b02d3

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V

    const v1, 0x7f0b00cd

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->c:Landroid/support/v7/app/AlertDialog;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->c:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "saved_instance_state_position"

    .line 121
    iget v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged() -  sharedPreferences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sound_alive"

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "sound_alive"

    .line 137
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    .line 138
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 140
    sget-object p2, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged() - preset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->c:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 142
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
