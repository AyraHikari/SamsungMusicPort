.class Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;[J)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 176
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->a:[J

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItemsInternal(Landroid/app/Activity;[J)V

    .line 177
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 178
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 179
    invoke-static {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2077"

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->dismiss()V

    const-string p2, "Ui"

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DeleteConfirmDialog.onClick() | deleteItemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->a:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->a:[J

    array-length v1, v1

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | mDeleteableWithDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 188
    invoke-static {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " parentFragment: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->b:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
