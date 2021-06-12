.class Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->c:Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->c:Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v6

    .line 134
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->c:Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;

    iget-object v4, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->a:Landroid/content/Context;

    if-nez v6, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver$2;->b:Landroid/os/Bundle;

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;->b(Lcom/samsung/android/app/music/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V

    return-void
.end method
