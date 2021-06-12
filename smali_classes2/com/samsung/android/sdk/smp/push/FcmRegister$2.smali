.class Lcom/samsung/android/sdk/smp/push/FcmRegister$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/push/FcmRegister;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/sdk/smp/push/FcmRegister;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/smp/push/FcmRegister;Landroid/content/Context;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$2;->b:Lcom/samsung/android/sdk/smp/push/FcmRegister;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 5
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/push/FcmRegister$2;->a:Landroid/content/Context;

    const-string v1, "fcm"

    const-string v2, "SMP_0001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
