.class public Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteConfirmDialog"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "AbsDeleteableWithDialog$DeleteConfirmDialog"


# instance fields
.field private b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

.field private c:Landroid/content/SharedPreferences;

.field private final d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$3;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static a([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;
    .locals 2

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args_string_message"

    .line 152
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "args_delete_item_ids"

    .line 153
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 155
    new-instance p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-direct {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog;)V
    .locals 3

    const-string v0, "Ui"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setDeleteableWithDialog() | deleteableWithDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->c:Landroid/content/SharedPreferences;

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 214
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string v0, "Ui"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateDialog() | savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " | parentFragment: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_string_message"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "args_delete_item_ids"

    .line 167
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 169
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b019e

    .line 171
    new-instance v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;[J)V

    invoke-virtual {v2, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b00cd

    .line 192
    new-instance v0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)V

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->d:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 229
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 230
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 219
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->dismiss()V

    :cond_0
    return-void
.end method
