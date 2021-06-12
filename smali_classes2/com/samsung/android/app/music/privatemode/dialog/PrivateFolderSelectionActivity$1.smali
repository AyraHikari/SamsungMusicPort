.class Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 75
    sget-object p1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrivateModeOffReceiver : onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity$1;->a:Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFolderSelectionActivity;->finish()V

    return-void
.end method
