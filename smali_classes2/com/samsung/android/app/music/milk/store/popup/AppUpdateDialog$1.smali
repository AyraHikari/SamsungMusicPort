.class Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "AppUpdateDialog"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismissed : FragmentManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "AppUpdateDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "AppUpdateDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
