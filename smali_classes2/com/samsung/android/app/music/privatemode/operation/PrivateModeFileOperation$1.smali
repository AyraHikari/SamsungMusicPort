.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;


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

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 3

    const-string v0, "PrivateMode"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget p2, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a:I

    if-ne p1, p2, :cond_2

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->registerClient(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->b(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "PrivateMode"

    const-string p2, "It fails to register the client."

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "PrivateMode"

    const-string p2, "Lock task mode(Pin Window) is enabled. So cancelThread"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    goto :goto_0

    .line 84
    :cond_2
    sget p2, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->b:I

    if-ne p1, p2, :cond_3

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->start()V

    goto :goto_0

    .line 87
    :cond_3
    sget p2, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c:I

    if-ne p1, p2, :cond_4

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    .line 90
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    return-void
.end method
