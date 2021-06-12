.class public Lcom/samsung/android/app/music/model/UserInfo;
.super Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/UserInfo$UserStatus;,
        Lcom/samsung/android/app/music/model/UserInfo$AdultCertifyStates;
    }
.end annotation


# static fields
.field public static ACCOUNT_BASE_USER_STATUS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_ADULT_NO:Ljava/lang/String; = "0"

.field public static final IS_ADULT_YES:Ljava/lang/String; = "1"

.field public static final IS_CERTIFIED_EXPIRED:Ljava/lang/String; = "-1"

.field public static final IS_CERTIFIED_NO:Ljava/lang/String; = "0"

.field public static final IS_CERTIFIED_YES:Ljava/lang/String; = "1"

.field protected static final TAG:Ljava/lang/String; = "UserInfo"


# instance fields
.field private firstName:Ljava/lang/String;

.field private hasPremiumOrderHistory:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mAdultCertifyYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "adultCertifyYn"
    .end annotation
.end field

.field private mAdultYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "adultYn"
    .end annotation
.end field

.field private mBirthday:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmail:Ljava/lang/String;

.field private mNewSAUser:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "newUserYn"
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "userId"
    .end annotation
.end field

.field private mUserStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/UserInfo;->ACCOUNT_BASE_USER_STATUS:Ljava/util/HashSet;

    .line 95
    sget-object v0, Lcom/samsung/android/app/music/model/UserInfo;->ACCOUNT_BASE_USER_STATUS:Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/samsung/android/app/music/model/UserInfo;->ACCOUNT_BASE_USER_STATUS:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/model/UserInfo;->ACCOUNT_BASE_USER_STATUS:Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/samsung/android/app/music/model/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserId:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultYn:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAccessToken:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->firstName:Ljava/lang/String;

    return-void
.end method

.method private convertAdultYn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, p1

    const/16 p1, 0x13

    if-lt v0, p1, :cond_0

    const-string p1, "1"

    return-object p1

    :cond_0
    const-string p1, "0"

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdultCertifyYn()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAdult()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultYn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public getIsNewSAUser()Z
    .locals 2

    const-string v0, "1"

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getSAtoken()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()I
    .locals 1
    .annotation build Lcom/samsung/android/app/music/model/UserInfo$UserStatus;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    return v0
.end method

.method public hasPremiumOrderHistory()Z
    .locals 2

    const-string v0, "1"

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/music/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAccountSignedIn()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAdultCertified()Z
    .locals 2

    const-string v0, "1"

    .line 268
    iget-object v1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeviceSignedIn()Z
    .locals 1

    .line 199
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreeUser()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isPaidUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPaidUser()Z
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isEconomyUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPremiumUser()Z
    .locals 2

    const-string v0, "1"

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->getStreamingUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isDownloadableUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSignInFailed()Z
    .locals 2

    .line 203
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignUpNeeded()Z
    .locals 1

    .line 212
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSigned()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isDeviceSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportedAd()Z
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->getSupportedFeature()Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->getSupportedFeature()Lcom/samsung/android/app/music/model/purchase/SupportedFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/purchase/SupportedFeature;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdultCertifyYn(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    return-void
.end method

.method public setSAInfo(Lcom/samsung/android/app/music/service/milk/SABundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    iget v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAccessToken:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/UserInfo;->convertAdultYn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultYn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSAtoken(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setUserStatus(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/app/music/model/UserInfo$UserStatus;
        .end annotation
    .end param

    .line 240
    iput p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 294
    invoke-static {}, Lcom/samsung/android/app/music/milk/util/MLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "mUserId"

    const-string v1, "firstName"

    const-string v2, "mAccessToken"

    const-string v3, "mBirthday"

    .line 297
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateUserStatus(Landroid/content/Context;)V
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 145
    iput p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mUserStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mNewSAUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mAdultCertifyYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->mBirthday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->hasPremiumOrderHistory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/samsung/android/app/music/model/UserInfo;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
