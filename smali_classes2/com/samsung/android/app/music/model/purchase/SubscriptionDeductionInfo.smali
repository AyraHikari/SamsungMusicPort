.class public Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIPTION_DEDUCTION_ALREADY_PURCHASED_TRACK:I = 0x219c

.field public static final SUBSCRIPTION_DEDUCTION_DOWNLOAD_COUNT_OVERFLOW:I = 0x219a

.field public static final SUBSCRIPTION_DEDUCTION_INVALID_ORDER_INFO:I = 0x21a2

.field public static final SUBSCRIPTION_DEDUCTION_TRACK_INFO_INVALID:I = 0x219b


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/purchase/SubscriptionDeduction;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/SubscriptionDeductionInfo;->list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
