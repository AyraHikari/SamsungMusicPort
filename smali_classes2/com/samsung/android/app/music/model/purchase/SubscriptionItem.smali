.class public Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private prevReservedYn:Ljava/lang/String;

.field private subscription:Lcom/samsung/android/app/music/model/purchase/Subscription;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "subscription"
        b = {
            "reservedSubscription"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->subscription:Lcom/samsung/android/app/music/model/purchase/Subscription;

    const-string v0, "N"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->prevReservedYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSubscription()Lcom/samsung/android/app/music/model/purchase/Subscription;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->subscription:Lcom/samsung/android/app/music/model/purchase/Subscription;

    return-object v0
.end method

.method public isPrevReserved()Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionItem;->prevReservedYn:Ljava/lang/String;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
