.class Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    .line 107
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x30000000

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->b(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/activity/PackageEnableChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->b(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/activity/PackageEnableChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->a()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->b(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/activity/PackageEnableChecker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;->b:Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
