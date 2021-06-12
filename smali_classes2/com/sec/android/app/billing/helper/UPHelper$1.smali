.class Lcom/sec/android/app/billing/helper/UPHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/billing/helper/UPHelper;->startSetup(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/billing/helper/UPHelper;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    iput-object p2, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->val$handler:Landroid/os/Handler;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "UPHelper"

    const-string v0, "onServiceConnected"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p2}, Lcom/sec/android/app/billing/service/IBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/billing/service/IBillingService;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    const/4 p1, 0x1

    .line 168
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    .line 169
    iget-object p1, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    const-string v0, "Samsung Billing connected"

    const/16 v1, 0xa

    invoke-static {p2, v1, v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$2(Lcom/sec/android/app/billing/helper/UPHelper;ILjava/lang/String;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "UP_CLIENT_OK / Samsung Billing connected"

    .line 170
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "UPHelper"

    const-string v0, "onServiceDisconnected"

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 161
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    const/4 p1, 0x0

    .line 162
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    return-void
.end method
