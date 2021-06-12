.class final Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;
.super Lcom/samsung/accessory/api/IDeathCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeathCallbackStub"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/accessory/api/IDeathCallback$Stub;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid packageName:null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;->a:Ljava/lang/String;

    return-object v0
.end method
