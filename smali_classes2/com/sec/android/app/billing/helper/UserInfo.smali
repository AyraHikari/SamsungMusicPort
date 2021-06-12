.class public Lcom/sec/android/app/billing/helper/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public accessToken:Ljava/lang/String;

.field public authAppID:Ljava/lang/String;

.field public userEmail:Ljava/lang/String;

.field public userID:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/sec/android/app/billing/helper/UserInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/UserInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/billing/helper/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/UserInfo;
    .locals 2

    .line 28
    new-instance v0, Lcom/sec/android/app/billing/helper/UserInfo;

    invoke-direct {v0}, Lcom/sec/android/app/billing/helper/UserInfo;-><init>()V

    .line 29
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UserInfo;->accessToken:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UserInfo;->authAppID:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UserInfo;->userEmail:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/billing/helper/UserInfo;->userID:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/android/app/billing/helper/UserInfo;->userName:Ljava/lang/String;

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

    .line 20
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UserInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UserInfo;->authAppID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UserInfo;->userEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UserInfo;->userID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/sec/android/app/billing/helper/UserInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
