.class Lcom/samsung/android/sdk/smp/push/FcmRegister$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/push/FcmRegister;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/sdk/smp/push/FcmRegister;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smp/push/FcmRegister;Landroid/content/Context;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;->b:Lcom/samsung/android/sdk/smp/push/FcmRegister;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/iid/InstanceIdResult;)V
    .locals 2

    .line 23
    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->a()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;->a:Landroid/content/Context;

    const-string v1, "fcm"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;->a(Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
