.class public Lcom/sec/android/app/billing/helper/BillingServerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public upServerURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/sec/android/app/billing/helper/BillingServerInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/BillingServerInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/BillingServerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/BillingServerInfo;
    .locals 1

    .line 20
    new-instance v0, Lcom/sec/android/app/billing/helper/BillingServerInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/BillingServerInfo;-><init>()V

    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/BillingServerInfo;->upServerURL:Ljava/lang/String;

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

    .line 16
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/BillingServerInfo;->upServerURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
