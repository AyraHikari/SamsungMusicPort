.class public Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bannerOrder:I

.field bannerType:Ljava/lang/String;

.field imageUrl:Ljava/lang/String;

.field landscapeImageUrl:Ljava/lang/String;

.field linkType:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field rollingTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->landscapeImageUrl:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerOrder:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->rollingTime:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

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

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBannerOrder()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerOrder:I

    return v0
.end method

.method public getBannerType()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscapeImageUrl()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->landscapeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRollingTime()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->rollingTime:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBannerOrder(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerOrder:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLandscapeImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->landscapeImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLinkType(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method public setRollingTime(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->rollingTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->JSON_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->landscapeImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->rollingTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkstore/StoreMainBanner;->bannerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
