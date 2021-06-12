.class public Lcom/sec/android/app/billing/helper/PaymentInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public confirmPasswordYN:Ljava/lang/String;

.field public exceptionPaymentMethods:Ljava/lang/String;

.field public freeTrialPeriod:Ljava/lang/String;

.field public freeTrialPeriodType:Ljava/lang/String;

.field public giftCardnCouponYN:Ljava/lang/String;

.field public paymentType:Ljava/lang/String;

.field public recentPayment:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public subscriptionPeriod:Ljava/lang/String;

.field public subscriptionPeriodType:Ljava/lang/String;

.field public subscriptionStartDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/sec/android/app/billing/helper/PaymentInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/PaymentInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/PaymentInfo;
    .locals 2

    .line 38
    new-instance v0, Lcom/sec/android/app/billing/helper/PaymentInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/PaymentInfo;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->confirmPasswordYN:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->freeTrialPeriod:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->freeTrialPeriodType:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->giftCardnCouponYN:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->recentPayment:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionPeriod:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionPeriodType:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionStartDate:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 25
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->confirmPasswordYN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->exceptionPaymentMethods:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->freeTrialPeriod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->freeTrialPeriodType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->giftCardnCouponYN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->paymentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->recentPayment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionPeriod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionPeriodType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/PaymentInfo;->subscriptionStartDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
