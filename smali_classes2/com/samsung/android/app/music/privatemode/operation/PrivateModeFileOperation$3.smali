.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "PrivateMode"

    const-string p2, " mPrivateOffReceiver onReceive() : ACTION_PRIVATE_MODE_OFF "

    .line 359
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$3;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
