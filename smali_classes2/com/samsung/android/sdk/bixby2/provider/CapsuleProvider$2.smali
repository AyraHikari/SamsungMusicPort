.class Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

.field final synthetic e:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->e:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->a:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    iput-object p3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->d:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->a:Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->e:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;->d:Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;->executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method
