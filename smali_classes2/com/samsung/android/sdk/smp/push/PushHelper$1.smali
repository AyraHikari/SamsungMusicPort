.class final Lcom/samsung/android/sdk/smp/push/PushHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/push/PushHelper;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/iid/InstanceIdResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 2

    .line 84
    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->a()Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fcm token is changed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper$1;->a(Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
