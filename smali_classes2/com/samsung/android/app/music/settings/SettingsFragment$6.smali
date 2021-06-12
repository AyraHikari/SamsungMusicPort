.class Lcom/samsung/android/app/music/settings/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/SettingsFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 1767
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$6;->b:Lcom/samsung/android/app/music/settings/SettingsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$6;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SamsungMusic/Backup/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1772
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment$6;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/provider/BackupDB;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
