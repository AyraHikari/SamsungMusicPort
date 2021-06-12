.class public Lcom/samsung/android/sdk/smp/push/FcmRegister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/push/PushPlatformRegistrable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/smp/push/FcmRegister$1;-><init>(Lcom/samsung/android/sdk/smp/push/FcmRegister;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 27
    new-instance v1, Lcom/samsung/android/sdk/smp/push/FcmRegister$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/smp/push/FcmRegister$2;-><init>(Lcom/samsung/android/sdk/smp/push/FcmRegister;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
