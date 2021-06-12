.class Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive : intent null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "extra_class_simple_name"

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : action dismiss. name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceive : same name"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;->a:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method
