.class final Lcom/samsung/android/sdk/accessory/SAService$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAService$a;->a:I

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAService$a;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    const-string v0, "[SA_SDK]SAService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agent initialization error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMsg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAService$a;->a:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAService$a;->b:Landroid/content/Intent;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAService;->a(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void
.end method
