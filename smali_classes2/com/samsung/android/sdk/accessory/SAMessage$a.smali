.class final Lcom/samsung/android/sdk/accessory/SAMessage$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/accessory/SAMessage;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->b:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAMessage;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run(): SAMessage referecnce is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->a(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage$a;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->b(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V

    return-void
.end method
